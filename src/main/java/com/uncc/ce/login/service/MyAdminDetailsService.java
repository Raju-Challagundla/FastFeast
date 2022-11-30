package com.uncc.ce.login.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.uncc.ce.entity.Admin;

@Service
public class MyAdminDetailsService implements UserDetailsService {

    @Autowired
    private AdminService adminService;

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Admin admin = adminService.findUserByEmail(email);
        List<GrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority("ADMIN"));
        return buildUserForAuthentication(admin, authorities);
    }

    private UserDetails buildUserForAuthentication(Admin admin, List<GrantedAuthority> authorities) {
        return new org.springframework.security.core.userdetails.User(admin.getStaff().getPerson().getPersonEmail(), admin.getPassword(),
                true, true, true, true, authorities);
    }
}