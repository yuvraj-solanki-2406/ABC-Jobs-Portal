<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Jobs</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/resources/CSS/ViewJobs.css">
<link rel="shortcut icon" href="/resources/Images/logo_u2.png" type="image/x-icon">
</head>
<body>
	<div class="navbar navbar-expand-lg bg-light"
		style="background-color: #efefef; margin-top: 5px;">
		<div class="container-fluid">
			<nav>
				<ul id="menu" class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-items"><a href="main_page.html"><img
							src="/resources/Images/logo_u2.png" alt="Logo" id="logo_image"></a></li>
					<span class="main_menu" id="logo_name"><b>ABC Jobs Pte Ltd</b></span>
					<div class="cont_1">
						<li class="main_menu"><a href="discover.html">Discover</a></li>
						<li class="main_menu"><a href="jobs.html">Jobs</a></li>
						<li class="main_menu"><a href="people.html">People</a></li>
						<li class="main_menu"><a href="contact.html">Contact Us</a></li>
						<li class="main_menu"><a href="about.html">About Us</a></li>
					</div>
				</ul>
			</nav>
		</div>
	</div>

		<table class="table table-hover table-bordered" modelAttribute="job">
			<tr>
				<th scope="col">#</th>
				<th scope="col">Job Author</th>
				<th scope="col">Job Title</th>
				<th scope="col">Comapny</th>
				<th scope="col">Salary</th>
				<th scope="col">#</th>
			</tr>

			<dd:forEach var="showJobs" items="${showJobs}">

				<tr>
					<td>${showJobs.job_Id}</td>
					<td>${showJobs.author}</td>
					<td>${showJobs.job_Title}</td>
					<td>${showJobs.company}</td>
					<td>${showJobs.salary}</td>
					<td><a href="/jobDetailsUser/${showJobs.job_Id}">View Job Details</a></td>
				</tr>

			</dd:forEach>

		</table>
	</div>

</body>
</html>