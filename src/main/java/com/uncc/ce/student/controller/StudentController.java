package com.uncc.ce.student.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uncc.ce.common.repository.CommonRepository;
import com.uncc.ce.entity.Student;
import com.uncc.ce.student.model.StudentModel;
import com.uncc.ce.student.service.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	@Autowired
	private CommonRepository commonRepository;
	
	@RequestMapping(value="/admin/students", method = RequestMethod.GET)
	public ModelAndView getAllEmployees() {
		ModelAndView mav = new ModelAndView("admin/list-students");
		List<Student> allDB = studentService.findAllStudents();
		List<StudentModel> all = new ArrayList<>();
		for (Student student : allDB) {
			StudentModel model = new StudentModel();
			BeanUtils.copyProperties(student, model);
			model.setRating(commonRepository.calculateAvgRatingByDriverId(student.getStudentId()));
			all.add(model);
		}
		
		mav.addObject("students", all);
		return mav;
	}
	
	@RequestMapping(value="/admin/addStudentForm", method = RequestMethod.GET) 
	public ModelAndView addEmployeeForm() {
		ModelAndView mav = new ModelAndView("admin/add-student-form");
		StudentModel newStudent = new StudentModel();
		mav.addObject("student", newStudent);
		return mav;
	}
//	
	@RequestMapping(value="/admin/saveStudent", method = RequestMethod.POST) 
	public String saveStudent(@ModelAttribute StudentModel student) {
		studentService.saveStudent(student);
		return "redirect:/admin/students";
	}
	
	@RequestMapping(value="/admin/updateStudent", method = RequestMethod.POST) 
	public String updateStudent(@ModelAttribute StudentModel student,@RequestParam Integer studentId) {
		student.setStudentId(studentId);
		studentService.updateStudent(student);
		return "redirect:/admin/students";
	}
//	
	@GetMapping("/admin/showUpdateForm")
	public ModelAndView showUpdateForm(@RequestParam Integer studentId) {
		ModelAndView mav = new ModelAndView("admin/update-student-form");
		Student student = studentService.findById(studentId);
		StudentModel newStudent = new StudentModel();
		newStudent.setCell(student.getPerson().getCell());
		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
		String date;
		try {
			date = formatter.format(student.getDrivers().get(0).getDateHired());
			newStudent.setDateHired(date);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		newStudent.setLicenseNumber(student.getDrivers().get(0).getLicenseNumber());
		newStudent.setGraduationYear(student.getGraduationYear());
		newStudent.setMajor(student.getMajor());
		newStudent.setPersonEmail(student.getPerson().getPersonEmail());
		newStudent.setPersonName(student.getPerson().getPersonName());
		newStudent.setStudentId(studentId);
		mav.addObject("student", newStudent);
		return mav;
	}
	
	@GetMapping("/admin/deleteStudent")
	public String deleteEmployee(@RequestParam Integer studentId) {
		studentService.deleteStudentById(studentId);
		return "redirect:/admin/students";
	}
}