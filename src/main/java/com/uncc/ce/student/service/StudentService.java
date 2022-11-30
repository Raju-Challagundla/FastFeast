package com.uncc.ce.student.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uncc.ce.entity.Driver;
import com.uncc.ce.entity.Person;
import com.uncc.ce.entity.Student;
import com.uncc.ce.student.model.StudentModel;
import com.uncc.ce.student.repository.StudentRepository;

@Service
public class StudentService {

	@Autowired
    private StudentRepository studentRepository;
    

    public List<Student> findAllStudents() {
    	List<Student> students = studentRepository.findAll();
        return students;
    }

    public Student findById(Integer studentId) {
    	return studentRepository.findById(studentId).get();
    }
    
    public void deleteStudentById(Integer studentId) {
    	studentRepository.deleteById(studentId);
    }
    
    public Student saveStudent(StudentModel sm) {
    	Student stu = new Student();
    	stu.setGraduationYear(sm.getGraduationYear());
    	stu.setMajor(sm.getMajor());
    	stu.setType("S");
    	Person person = new Person();
    	person.setCell(sm.getCell());
    	person.setPersonEmail(sm.getPersonEmail());
    	person.setPersonName(sm.getPersonName());
    	stu.setPerson(person);
    	if(sm.getLicenseNumber() != null) {
    		Driver driver = new Driver();
    		driver.setLicenseNumber(sm.getLicenseNumber());
    		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
    		Date date;
			try {
				date = formatter.parse(sm.getDateHired());
	    		driver.setDateHired(date);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//    		driver.setRating(sm.getRating());
    		driver.setStudent(stu);
    		List<Driver> d = new ArrayList<>();
    		d.add(driver);
    		stu.setDrivers(d);
    		
    	}
        return studentRepository.save(stu);
    }
    public Student updateStudent(StudentModel sm) {
    	Student stu = findById(sm.getStudentId());
    	stu.setGraduationYear(sm.getGraduationYear());
    	stu.setMajor(sm.getMajor());
    	Person person = stu.getPerson();
    	person.setCell(sm.getCell());
    	person.setPersonEmail(sm.getPersonEmail());
    	person.setPersonName(sm.getPersonName());
    	stu.setPerson(person);
    	if(sm.getLicenseNumber() != null) {
    		Driver driver = stu.getDrivers().get(0);
    		driver.setLicenseNumber(sm.getLicenseNumber());
    		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
    		Date date;
			try {
				date = formatter.parse(sm.getDateHired());
	    		driver.setDateHired(date);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//    		driver.setRating(sm.getRating());
    		driver.setStudent(stu);
//    		List<Driver> d = new ArrayList<>();
//    		d.add(driver);
//    		stu.setDrivers(d);
    		
    	}
        return studentRepository.save(stu);
    }
    
}