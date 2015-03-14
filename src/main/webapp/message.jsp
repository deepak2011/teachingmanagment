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
	<div id="registrationForm">
		<form id="myform" class="cssform" action="">

		<p>
			<label for="phoneNum">Phone No</label> <input type="text" id="user" value="" />
		</p>
		
		<p>
			<label for="address">Message:</label>
			<textarea id="message" rows="5" cols="25"></textarea>
		</p>
		
		<div style="margin-left: 150px;">
			<input type="submit" value="Send" /> <input type="reset"
				value="reset" />
		</div>

	</form>

	</div>
	

</body>
</html>