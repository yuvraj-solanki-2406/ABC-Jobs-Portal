<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>

<link rel="shortcut icon" href="/resources/Images/logo_u2.ico"
	type="image/x-icon">
<link rel="stylesheet" href="/resources/CSS/navigation.css">
<link rel="stylesheet" href="/resources/CSS/registration_form.css">

</head>
<body>

	<nav>
		<ul id="menu">
			<li><a href="main_page.html"
				style="background-image: url('resources/Images/logo_u2.png');"></a></li>
			<span class="main_menu" id="logo_name"><b>Abc Jobs Pte Ltd</b></span>
			<div class="cont_1">
				<li class="main_menu"><a href="#">Discover</a></li>
				<li class="main_menu"><a href="#">Jobs</a></li>
				<li class="main_menu"><a href="login"> Login</a></li>
				<li class="main_menu"><a href="addL"> Register now</a></li>
				<li class="main_menu"><a href="showdata">Show Learners</a></li>
				<li class="main_menu"><a href="search">Search</a></li>
			</div>
		</ul>
	</nav>

	<div class="form-container">

		<h1 style="color:#002f65;">Edit Users Details</h1>
		<table
			style="border: 0px solid red; margin-left: auto; margin-right: auto; margin-top: -60px;">

			<form:form method="POST" modelAttribute="user" commandName="student"
				class="form-horizontal" action="/updateUser">

				<tr style="display:none;">
					<td><sf:label path="userId" for="fname" class="form_label">User Id</sf:label></td>
					<td><sf:input path="userId" class="form_control" disabled="disabled"/></td>
					<br>

				</tr>

				<tr>
					<td><sf:label path="first_name" for="fname" class="form_label">First Name</sf:label></td>
					<td><sf:input path="first_name" class="form_control"
							required="required" /></td>
					<br>
				</tr>

				<tr>
					<td><sf:label path="last_name" for="lname" class="form_label">Last Name</sf:label></td>
					<td><sf:input path="last_name" class="form_control"
							required="required" /></td>
					<br>
				</tr>

				<tr>
					<td><sf:label path="mailid" for="email" class="form_label">Email</sf:label></td>
					<td><sf:input path="mailid" class="form_control"
							required="required" /></td>
					<br>
				</tr>
				
				<tr>
					<td><sf:label path="address" for="address" class="form_label">Address</sf:label></td>
					<td><sf:input path="address" class="form_control"
							required="required" /></td>
					<br>

				</tr>
				
				<tr>
					<td><sf:label path="role" for="role" class="form_label">Role</sf:label></td>
					<td><sf:input path="role" class="form_control"
							required="required" /></td>
					<br>
				</tr>

				<tr>
					<td></td>
					<td><input type="submit" id="submit_btn" value="Update"
						class="btn btn-transparent btn-block"></td>
				</tr>
				
				
				<tr style="visibility: hidden;">
					<td><sf:label path="password" class="form_label">Password</sf:label></td>
					<td><sf:input path="password" class="form_control"
							type="password" /></td>
				</tr>
				<tr style="visibility: hidden;">
					<td><sf:label path="userName" for="userName"
							class="form_label">Username</sf:label></td>
					<td><sf:input path="userName" class="form_control" /></td>
				</tr>

			</form:form>

		</table>

	</div>
</body>
</html>