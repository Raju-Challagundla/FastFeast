package com.uncc.ce.login.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.uncc.ce.entity.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Long> {
	
	@Query("SELECT a"
			+ "  FROM Person p, Admin a, Staff s"
			+ "  WHERE a.staff.staffId = s.staffId AND s.person.personId = p.personId AND p.personEmail=?1")
	Admin findByEmail(String email);
//    User findByUserName(String userName);
}