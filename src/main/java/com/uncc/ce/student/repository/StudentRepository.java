package com.uncc.ce.student.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.uncc.ce.entity.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {
	 Student findByStudentId(String studentId);
}