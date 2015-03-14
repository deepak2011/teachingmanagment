<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="teachingManagmentApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script>
<script type="text/javascript"  src="app/main.js"></script>
<script type="text/javascript"  src="app/controller/dashboardController.js"></script>

<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/table.css" />
<title>Teaching Management</title>
</head>
<body ng-controller="dashboardController" >
	<div id="menu">
		<%@ include file="./menu.jsp"%>
	</div>
	<div style="clear: both;"></div>
	<div id="continer">
		<div id="remainingFees" class="CSSTableGenerator">
			<div class="divHeading">
				<h3>RemainingFees Student</h3>
			</div>
			<div class="filterBy">
				Filter By : 
				<select  ng-model="student_clazz" class="soflow" ng-options="clazz for clazz in clazzs">
					
				</select> 
				<select ng-model="student_batch" class="soflow" ng-options="batch for batch in batchs">
					
				</select>
			</div>
			<table style="width: 100%;">
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Class</th>
					<th>Batch</th>
					<th>Fee Date</th>
				</tr>
				<tr ng-repeat="student in students | filter:{clazzName:student_clazz, batchName:student_batch}" >
					<td>{{ student.id }}</td>
					<td>{{ student.name }}</td>
					<td>{{ student.clazzName }}</td>
					<td>{{ student.batchName }}</td>
					<td>{{ student.joiningDate }}</td>
				</tr>
			</table>
		</div>
		<div id="nearMonthCompleted" class="CSSTableGenerator">
			<div class="divHeading">
				<h3>NearMonthCompleted</h3>
			</div>
			<div class="filterBy" >
				Filter By : 
				<select  ng-model="student_clazz1" class="soflow">
					<option>Select Class</option>
					<option>9</option>
					<option>10</option>
					<option>12</option>
				</select> 
				<select ng-model="student_batch1" class="soflow">
					<option>Select Batch</option>
					<option>Morning</option>
					<option>Noon</option>
					<option>Evening</option>
				</select>
			</div>
			<table style="width: 100%;">
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Class</th>
					<th>Batch</th>
					<th>Fee Date</th>
				</tr>
				<tr ng-repeat="student in students | filter:{clazz:student_clazz1, batch:student_batch1}">
					<td>{{ student.id }}</td>
					<td>{{ student.name }}</td>
					<td>{{ student.clazzName }}</td>
					<td>{{ student.batchName }}</td>
					<td>{{ student.joiningDate }}</td>
				</tr>
			</table>
		</div>
	</div>

</body>
</html>