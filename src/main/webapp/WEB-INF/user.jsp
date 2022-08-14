<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Page</title>
<link rel="stylesheet" href="/resources/CSS/navigation.css">
<link rel="stylesheet" href="/resources/CSS/userpage.css">
<link rel="stylesheet" href="/resources/CSS/AdminPage.css">
<link rel="shortcut icon" href="/resources/Images/logo_u2.png"
	type="image/x-icon">
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

<style>
body {
	padding: 10px;
}
</style>
</head>

<body>
	<!-- Navigation Menu -->
	<div class="navigation">
		<nav>
			<ul id="menu">
				<li><a href="main_page.html"><img
						src="resources/Images/logo_u2.png" alt="Logo" id="logo_image"></a></li>
				<span class="main_menu" id="logo_name"><b>ABC Jobs Pte
						Ltd</b></span>
				<div class="cont_1">
					<li class="main_menu"><a href="#">Discover</a></li>
					<li class="main_menu"><a href="viewjobsUser">Jobs</a></li>
					<li class="main_menu"><a href="login"> Login</a></li>
					<li class="main_menu"><a href="register"> Register now</a></li>
					<li class="main_menu"><a href="search">Search</a></li>
				</div>
			</ul>
		</nav>
	</div>

	<div class="jumbotron" style="background-color: #eeeeee69;">
		<h1 id="heading">
			<strong>Profile Page</strong>
		</h1>
		<div class="sidebar">


			<div class="col-md-3" id="short_detail"
				style="background-color: #ececec87;">
				<div class="container_image">
					<img src="resources/Images/user.png" alt="dummy_man" id="man_img"
						class="img-fluid">
				</div>
				<br>
				<div class="container" style="background-color: white;">
					<p style="width: 300px;">
						<strong>First Name: </strong> ${userName.first_name } <br> <strong>Last
							Name: </strong> ${userName.last_name } <br> <strong>Username:
						</strong> ${userName.userName } <br> 
						
						<form action="/logout" style="margin-top: 93px;margin-bottom: 10px;">
						<input type="submit" value="logout" class="btn btn-primary" id="btn_1">
						</form>
					</p>

				</div>

			</div>

			<div class="col-md-7">

				<input type="text" name="messaging" id="post" class="form-control"
					placeholder="Create a post"> <input type="file"
					name="Image" id="upload_img" accept="image/*"> <input
					type="button" value="Post" class="btn btn-primary" id="post_btn"><br>
				<span class="text-muted">Select Image</span>

			</div>
		</div>
	</div>

</body>

</html>