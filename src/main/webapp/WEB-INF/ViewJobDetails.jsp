<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Job Details</title>
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
<link rel="shortcut icon" href="/Images/logo_u2.png" type="image/x-icon">
</head>

<body>
	<div class="navbar navbar-expand-lg bg-light"
		style="background-color: #efefef; margin-top: 5px;">
		<div class="container-fluid">
			<nav>
				<ul id="menu" class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-items"><a href="/"><img
							src="/resources/Images/logo_u2.png" alt="Logo" id="logo_image"></a></li>
					<span class="main_menu" id="logo_name"><b>ABC Jobs Pte
							Ltd</b></span>
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

	<div class="container">
		<div class="col-md-7">
			<sf:form action="submitJob" method="post" modelAttribute="job">

				<div class="form-group" style="display:none;">
					<label for="id" class="form-label">Job Id</label>
					<sf:input path="job_Id" name="id" id="job_Id" class="form-control" />
				</div>

				<div class="form-group">
					<label for="author" class="form-label">Name</label>
					<sf:input path="author" name="author" id="name"
						class="form-control" />
				</div>
				<div class="form-group">
					<label for="email" class="form-label">Email</label>
					<sf:input path="email" type="email" name="email" id="email"
						class="form-control" />
				</div>
				<div class="form-group">
					<label for="company" class="form-label">Company</label>
					<sf:input path="company" type="text" name="company" id="company"
						class="form-control" />
				</div>
				<div class="form-group">
					<label for="salary" class="form-label">Salary</label>
					<sf:input path="salary" name="salary" id="salary"
						class="form-control" />
				</div>
				<div class="form-group">
					<label for="time" class="form-label">Working Hours</label>
					<sf:input path="working_hours" type="number" name="working_hours"
						id="working_hours" class="form-control" />
				</div>

				<div class="form-group" id="old_job_title">
					<label for="job_title" class="form-label">Job Title</label>
					<sf:select path="job_Title" class="form-control">
						<sf:option class="text-muted" value="--Select Job Title--">--Select Job Title--</sf:option>
						<sf:option value="Software Engineer">Software Engineer</sf:option>
						<sf:option value="Data Anaylst">Data Anaylst</sf:option>
						<sf:option value="Frontend Developer">Frontend Developer</sf:option>
						<sf:option value="Back end Developer">Back end Developer</sf:option>
						<sf:option value="Java Developer">Java Developer</sf:option>
						<sf:option value="Full Stack Web Developer">Full Stack Web Developer</sf:option>
						<option id="other" onclick="change()" value="Any other">Any
							Others</option>
					</sf:select>
				</div>

				<div class="form-group">
					<label for="detials" class="form-label">Job Details</label><br>
					<sf:textarea path="details" name="detials" id="details" cols="87"
						rows="5" placeholder="Write Here"></sf:textarea>
				</div>
			</sf:form>

			<sf:form action="/deletejob" method="get">
				<input type="submit" value="Delete" class="btn btn-danger"
					id="btn_right">
				<br>
				<br>
			</sf:form>

		</div>

	</div>
</body>

</html>