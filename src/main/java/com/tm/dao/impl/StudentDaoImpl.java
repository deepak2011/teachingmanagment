package com.tm.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.tm.dao.StudentDao;
import com.tm.dto.StudentInfo;

@Repository
public class StudentDaoImpl implements StudentDao{

	@Autowired  
	DataSource dataSource;


	@Override
	public List<StudentInfo> list() {
		final DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);  
		String sql = "SELECT stu.id, stu.name, clazz.clazzName, batch.batchName, stu.joiningDate "
				+ "from Student stu, Clazz clazz, Batch batch "
				+ "where stu.batch_id=batch.id and batch.clazz_id=clazz.id";

		List<StudentInfo> listStudent = jdbcTemplate.query(sql, new RowMapper<StudentInfo>() {

			@Override
			public StudentInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
				StudentInfo aStudent = new StudentInfo();

				aStudent.setId(rs.getLong("id"));
				aStudent.setName(rs.getString("name"));
				aStudent.setClazzName(rs.getString("clazzName"));
				aStudent.setBatchName(rs.getString("batchName"));
				aStudent.setJoiningDate(df.format(rs.getDate("joiningDate")));

				return aStudent;
			}

		});

		return listStudent;
	}

	@Override
	public StudentInfo getStudentInfo(Long id) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);  
		String sql = "SELECT * FROM Student WHERE Student_id=" + id;
		return jdbcTemplate.query(sql, new ResultSetExtractor<StudentInfo>() {

			@Override
			public StudentInfo extractData(ResultSet rs) throws SQLException,
			DataAccessException {
				if (rs.next()) {
					StudentInfo student = new StudentInfo();
					student.setId(rs.getLong("Student_id"));
					student.setName(rs.getString("name"));
					student.setEmailAddress(rs.getString("email"));
					student.setAddress(rs.getString("address"));
					student.setPhoneNum(rs.getString("telephone"));
					return student;
				}

				return null;
			}

		});
	}

	@Override
	public List<String> getBatchList() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);  
		String sql = "SELECT batchName from Batch";

		List<String> listBatch = jdbcTemplate.query(sql, new RowMapper<String>() {

			@Override
			public String mapRow(ResultSet rs, int rowNum) throws SQLException {
				String batchName = rs.getString("batchName");
				return batchName; 
			}

		});

		return listBatch;
	}

	@Override
	public List<String> getClazzList() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);  
		String sql = "SELECT clazzName from Clazz";

		List<String> listClazz = jdbcTemplate.query(sql, new RowMapper<String>() {

			@Override
			public String mapRow(ResultSet rs, int rowNum) throws SQLException {
				String clazzName = rs.getString("clazzName");
				return clazzName; 
			}

		});
		return listClazz;
	}

}
