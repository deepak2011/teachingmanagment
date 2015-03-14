package com.tm.dao;

import java.util.List;

import com.tm.domain.Student;
import com.tm.dto.StudentInfo;


public interface StudentDao {
	
	public List<StudentInfo> list();

	public StudentInfo getStudentInfo(Long id);

	public List<String> getBatchList();

	public List<String> getClazzList();
	
}
