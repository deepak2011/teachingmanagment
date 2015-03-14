package com.tm.service;

import java.util.List;

import com.tm.dto.StudentInfo;
public interface StudentService {

	
	public StudentInfo getStudentInfo(Long id);
	
	public List<StudentInfo> getStudentList();

	public List<String> getBatchList();

	public List<String> getClazzList();
}
