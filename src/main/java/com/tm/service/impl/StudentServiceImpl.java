package com.tm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tm.dao.StudentDao;
import com.tm.dto.StudentInfo;
import com.tm.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;
	
	@Override
	public StudentInfo getStudentInfo(Long id) {
		return studentDao.getStudentInfo(id);
	}

	@Override
	public List<StudentInfo> getStudentList() {
		return studentDao.list();
	}

	@Override
	public List<String> getBatchList() {
		return studentDao.getBatchList();
	}

	@Override
	public List<String> getClazzList() {
		return studentDao.getClazzList();
	}

}
