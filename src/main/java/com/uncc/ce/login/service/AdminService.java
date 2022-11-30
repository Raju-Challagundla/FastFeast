package com.uncc.ce.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.uncc.ce.entity.Admin;
import com.uncc.ce.entity.Person;
import com.uncc.ce.entity.Staff;
import com.uncc.ce.login.model.AdminModel;
import com.uncc.ce.login.repository.AdminRepository;

@Service
public class AdminService {

	@Autowired
    private AdminRepository adminRepository;
    
    @Autowired
    PasswordEncoder passwordEncoder;


//    public Admin findUserByEmail(String email) {
//        return adminRepository.findByEmail(email);
//    }
//
//    public Admin findUserByUserName(String userName) {
//        return adminRepository.findByUserName(userName);
//    }
    
    public Admin findUserByEmail(String email) {
        return adminRepository.findByEmail(email);
    }

    public Admin saveAdmin(AdminModel adminModel) {
    	Admin admin = new Admin();
    	admin.setPassword(passwordEncoder.encode(adminModel.getPassword()));
    	Staff staff = new Staff();
    	staff.setIsAdmin("Y");
    	staff.setPosition(adminModel.getPosition());
    	Person person = new Person();
    	person.setCell(adminModel.getCell());
    	person.setPersonEmail(adminModel.getPersonEmail());
    	person.setPersonName(adminModel.getPersonName());
    	staff.setPerson(person);
    	admin.setStaff(staff);
        return adminRepository.save(admin);
    }
}