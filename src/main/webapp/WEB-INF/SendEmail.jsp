<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Email</title>
<link rel="shortcut icon" href="resources\Images\logo_u2.png"
	type="image/x-icon">
<link rel="stylesheet" href="resources\CSS\ViewJobs.css">

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

<style>
.form-label {
	font-family: 'Verdana', 'Georgia', 'Calibri';
	font-size: 18px;
	font-weight: 100px;
}

#btn {margin-left: auto;margin-right: auto;display: flex;}
#email_inst{font-size:12px;line-height:50%;}
#comma{font-size:19px;}
.errors {
	color: red;
}
</style>

</head>

<body>

	<div class="navbar navbar-expand-lg bg-light"
		style="background-color: #f3f3f3; margin-top: 5px;">
		<div class="container-fluid">
			<nav>
				<ul id="menu" class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-items"><a href="/"><img
							src="/resources/Images/logo_u2.png" alt="Logo" id="logo_image"></a></li>
					<span class="main_menu" id="logo_name"><b>ABC Jobs Pte
							Ltd</b></span>
					<div class="cont_1">
						<li class="main_menu"><a href="/">Discover</a></li>
						<li class="main_menu"><a href="/jobs">Jobs</a></li>
						<li class="main_menu"><a href="#">People</a></li>
						<li class="main_menu"><a href="#">Contact Us</a></li>
						<li class="main_menu"><a href="#">About Us</a></li>
					</div>
				</ul>
			</nav>
		</div>
	</div>

	<sf:form action="/sendEmails" method="post" modelAttribute="emails">

		<div class="container" style="margin-top: 25px;">
			<div class="col-md-12">
				<div class="container"
					style="background-color: #f8f9fa; padding: 20px;">

					<div class="form-group" style="display:none;">
						<label for="emailId" class="form-label">Mail Id</label>
						<sf:input path="emailId" name="email_Id" id="emailId"
							class="form-control" placeholder="Write Email Id" />
						<sf:errors path="emailId" class="errors"></sf:errors>
					</div>
						<br>
					<div class="form-group">
						<label for="reciever_emails" class="form-label">Write the
							Email</label>
							<p class="text-muted" id="email_inst">Use(<span id="comma">,</span>) to seprate mail ids without spaces</p>
						<sf:input path="reciever_emails" type="text" name="email"
							id="email" class="form-control" placeholder="Enter Email" />
						<sf:errors path="reciever_emails" class="errors"></sf:errors>
					</div>
						<br>
					<div class="form-group">
						<label for="subject" class="form-label">Subject of the
							Email</label>
						<sf:input path="subject" type="text" name="subject" id="subject"
							class="form-control" placeholder="Enter Subject" />
						<sf:errors path="subject" class="errors"></sf:errors>
					</div>

					<br>

					<div class="form-group">
						<label for="content" class="form-label">Write the Content
							of Mail</label><br>
						<sf:textarea path="content" name="content" id="content"
							class="form-control" rows="5"
							placeholder="Enter the content of the mail"></sf:textarea>
						<sf:errors path="content" class="errors"></sf:errors>
					</div>

					<br>

					<div class="form-group" id="btn">
						<input type="submit" value="Send Email" class="btn btn-primary"
							id="btn" onclick="alert()">
					</div>
				</div>
			</div>
		</div>
	</sf:form>


</body>

<!-- <script>
	function alert(){
		alert(Email Sent);
		alert("Email Sent")
	}

</script> -->

</html>