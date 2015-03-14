<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="./css/style.css" />
<title>Teaching Management</title>
</head>
<body>
	<div id="menu">
		<%@ include file="./menu.jsp"%>
	</div>
	<div style="clear: both;"></div>
	<div id="continer">
		<div id="photoInfo" style="margin-top: 20px;">
			<div id="photo" class="left">
				<img src="./images/user.png" alt="Mountain View"
					style="width: 304px; height: 228px">
			</div>
			<div id="info" class="right"
				style="border: 1px solid #555; width: 700px; bgcolor: #FFFFFF">
				<p>
					<label for="parentPhoneNum">Name</label> <label
						for="parentPhoneNum">Deepak</label>
				</p>
			</div>
		</div>
		<div style="clear: both;"></div>
		<div id="remainingFees">
			<div class="divHeading">
				<h3>Test Result</h3>
			</div>
			<div class="filterBy">
				Filter By : <select class="soflow">
					<option>Select Class</option>
					<option>9</option>
					<option>10</option>
					<option>12</option>
				</select> <select class="soflow">
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
		<div id="nearMonthCompleted">
			<div class="divHeading">
				<h3>Fee Details</h3>
			</div>
			<div class="filterBy">
				Filter By : <select class="soflow">
					<option>Select Class</option>
					<option>10</option>
					<option>12</option>
				</select> <select class="soflow">
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