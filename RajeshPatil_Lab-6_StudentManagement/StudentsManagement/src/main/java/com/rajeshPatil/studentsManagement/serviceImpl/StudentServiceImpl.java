package com.rajeshPatil.studentsManagement.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rajeshPatil.studentsManagement.entity.Student;
import com.rajeshPatil.studentsManagement.repository.StudentRepository;
import com.rajeshPatil.studentsManagement.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentRepository studentRepository;

	@Override
	public List<Student> findAll() {
		return studentRepository.findAll();
	}

	@Override
	public Student save(Student student) {
		return studentRepository.save(student);
	}

	@Override
	public Student findById(int id) {
		return studentRepository.findById(id).get();
	}

	@Override
	public Student deleteById(int id) {
		Student student = findById(id);
		studentRepository.delete(student);
		return student;
	}
}
