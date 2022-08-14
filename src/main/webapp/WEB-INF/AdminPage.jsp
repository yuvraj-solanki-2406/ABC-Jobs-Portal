<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Page</title>
<meta charset="ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<link rel="shortcut icon" href="/resources/Images/logo_u2.png" type="image/x-icon">
<link rel="stylesheet" href="/resources/CSS/navigation.css"></link>
<link rel="stylesheet" href="/resources/CSS/AdminPage.css"></link>
<link rel="stylesheet" href="/resources/CSS/userpage.css"></link>
</head>

<body>

	<div class="navigation">
		<nav>
			<ul id="menu">
				<span class="main_menu" id="logo_name"><b>Abc Jobs Pte
						Ltd</b></span>
				<div class="cont_1">
					<li class="main_menu"><a href="#">Discover</a></li>
					<li class="main_menu"><a href="jobs">Jobs</a></li>
					<li class="main_menu"><a href="login"> Login</a></li>
					<li class="main_menu"><a href="register"> Register now</a></li>
					<li class="main_menu"><a href="showdata">Show Users</a></li>
					<li class="main_menu"><a href="search">Search</a></li>
				</div>
			</ul>
		</nav>
	</div>

	<div class="jumbotron">
		<h1 id="heading">
			<strong>Profile Page</strong>
		</h1>
		<div class="sidebar">


			<div class="col-md-3" id="short_detail">
				<div class="container_image">
					<img src="resources/Images/user.png" alt="dummy_man" id="man_img"
						class="img-fluid">
				</div>
				<br>
				<div class="container" style="background-color: white;">
					
					<div>
						<p style="width:270px;">
						<strong>First Name: </strong>  ${userName.first_name } <br> 
						<strong>Last Name: </strong>   ${userName.last_name } <br>
						
				
					</p>
						<form action="/logout">
						<input type="submit" value="logout" class="btn btn-primary" id="btn_1">
						</form>
						
					</div>
					
				</div>
			</div>

			<div class="col-md-7">

				<input type="text" name="messaging" id="post" class="form-control"
					placeholder="Create a post"> <input type="file"
					name="Image" id="upload_img" accept="image/*"> <input
					type="button" value="Post" class="btn btn-primary" id="post_btn"><br>
				<span class="text-muted">Select Image</span>

					<br><br><br><br>
				<p style="text-align: center; color: #002f65; font-size: 14.6px;">
					<a href="/register" class="btn_admin"><strong>Add Members</strong></a>
					<a href="/showdata" class="btn_admin"><strong>Show Members</strong></a> 
					<a href="/delete" class="btn_admin"><strong>Delete Members</strong></a>
					<a href="/jobs" class="btn_admin"><strong>Jobs</strong></a>
					<a href="/sendEmail" class="btn_admin"><strong>Send Email</strong></a>
				</p>
			</div>

		</div>
	</div>


	<br>

</body>
</html>