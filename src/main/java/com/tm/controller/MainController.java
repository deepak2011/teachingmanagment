package com.tm.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tm.dto.StudentInfo;
import com.tm.service.StudentService;

@Controller
public class MainController {

	@Autowired
    private StudentService studentService;
	
	private Logger logger = Logger.getLogger(MainController.class);
	
	@RequestMapping(value="/dashboard", method = RequestMethod.GET)
	public String printHello() {
		logger.info("This is an info log entry");
		List<StudentInfo> studentList = studentService.getStudentList();
		logger.info("Student size():::::::" + studentList.size());
		return "dashboard";
	}
	
	@RequestMapping(value="/getBatchList", headers ={"Accept=application/json"},  method = RequestMethod.GET)
	@ResponseBody
	public List<String> getBatchList() {
		logger.info("This is an info log entry");
		List<String> batchList = studentService.getBatchList();
		logger.info("Student size():::::::" + batchList.size());
		return batchList;
	}

	@RequestMapping(value="/getClazzList", headers ={"Accept=application/json"},  method = RequestMethod.GET)
	@ResponseBody
	public List<String> getClazzList() {
		logger.info("This is an info log entry");
		List<String> clazzList = studentService.getClazzList();
		logger.info("Student size():::::::" + clazzList.size());
		return clazzList;
	}

	@RequestMapping(value="/getStudentInfo", headers ={"Accept=application/json"},  method = RequestMethod.GET)
	@ResponseBody
	public List<StudentInfo> getStudentInfo() {
		logger.info("This is an info log entry");
		List<StudentInfo> studentList = studentService.getStudentList();
		logger.info("Student size():::::::" + studentList.size());
		return studentList;
	}
}
