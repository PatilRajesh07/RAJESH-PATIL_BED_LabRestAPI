package com.rajeshPatil.studentsManagement.service;

import java.util.List;

import com.rajeshPatil.studentsManagement.entity.Student;

public interface StudentService {

	List<Student> findAll();
	
	Student save(Student student);
	
	Student findById(int id);
	
	Student deleteById(int id);

}
