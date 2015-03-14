<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="teachingManagmentApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script>
<script type="text/javascript" src="app/main.js"></script>
<script type="text/javascript" src="app/controller/registrationCtrl.js"></script>

<link rel="stylesheet" type="text/css" href="./css/style.css" />
<title>Teaching Management</title>
</head>
<body ng-controller="registrationCtrl" >
	<div id="menu">
		<%@ include file="./menu.jsp"%>
	</div>
	<div style="clear: both;"></div>
	<div id="continer">
		<div class="divHeading">
			<center>
				<h1>Registration Form</h1>
			</center>
		</div>
		<div id="registrationForm" class="cssform">
			<!-- <form id="myform" class="cssform" action=""> -->

				<p>
					<label for="user">Name</label> <input type="text" id="user" name="name" ng-model="form.name"
						value="" />
				</p>

				<p>
					<label for="clazz">Class</label>
					<select id="clazz" name="clazz" ng-model="form.clazz" ng-options="clazz for clazz in clazzs">
						<option value="">-- Select Class --</option>
					</select>
				</p>

				<p>
					<label for="comments">Sex:</label> Male: <input type="radio" ng-model="form.sex"
						name="sex" /> Female: <input type="radio" name="sex" /><br />
				</p>

				<p>
					<label for="address">Address:</label>
					<textarea id="address" rows="5" cols="25" name="address" ng-model="form.address"></textarea>
				</p>

				<p>
					<label for="batch">Batch</label>
					<select id="batch" name="batch" ng-model="form.batch" ng-options="batch for batch in batchs">
						<option value="">-- Select Batch --</option>
					</select>
				</p>

				<p>
					<label for="phoneNum">Phone No.</label> <input type="text" name="phoneNum" ng-model="form.phoneNum"
						id="phoneNum" value="" />
				</p>

				<p>
					<label for="college">College</label> <input type="text"
						id="college" value="" name="college" ng-model="form.college"/>
				</p>

				<p>
					<label for="emailAddress">Email Address:</label> <input type="text"
						id="emailAddress" value="" ng-model="form.emailAddress"/>
				</p>

				<p>
					<label for="parentName">Parent Name</label> <input type="text"
						id="parentName" value="" name="parentName" ng-model="form.parentName"/>
				</p>

				<p>
					<label for="parentPhoneNum">Parent Phone No.</label> <input
						type="text" id="parentPhoneNum" value="" name="parentPhoneNum" ng-model="form.parentPhoneNum"/>
				</p>

				<!-- 		<p>
			<label for="comments">Hobbies:</label> <input type="checkbox"
				name="hobby" /> Tennis<br /> <input type="checkbox" name="hobby"
				class="threepxfix" /> Reading <br /> <input type="checkbox"
				name="hobby" class="threepxfix" /> Basketball <br />
		</p>
 -->
				<!-- <p>
			<label for="terms">Agree to Terms?</label> <input type="checkbox"
				id="terms" class="boxes" />
		</p> -->

				<div style="margin-left: 150px;">
					<input type="submit" value="Submit" ng-click = "addFormTOTable(form)"/> <input type="reset"
						value="reset" />
				</div>

			<!-- </form> -->

		</div>
		<div id="AddedStudent">
			<div class="divHeading">
				<h3>Added Student</h3>
			</div>
			<table style="width: 100%;">
				<tr>
					<th>Name</th>
					<th>Class</th>
					<th>Sex</th>
					<th>Address</th>
					<th>Batch</th>
					<th>Phone No</th>
					<th>College</th>
					<th>Email</th>
					<th>Parent</th>
					<th>Parent No</th>
					<th>edit</th>
					
				</tr>
				<tr ng-repeat="student in students" >
					<td>{{ student.name }}</td>
					<td>{{ student.clazz }}</td>
					<td>{{ student.sex }}</td>
					<td>{{ student.address }}</td>
					<td>{{ student.batch }}</td>
					<td>{{ student.phoneNum }}</td>
					<td>{{ student.college }}</td>
					<td>{{ student.emailAddress }}</td>
					<td>{{ student.parentName }}</td>
					<td>{{ student.parentPhoneNum }}</td>
					<th><img src="./images/search.jpg" alt="edit" ng-click="edit(student)"> </th>
				</tr>
				<tr>
					<td>1</td>
					<td>Deepak</td>
					<td>12</td>
					<td>Morning</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Ankur</td>
					<td>9</td>
					<td>Noon</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>