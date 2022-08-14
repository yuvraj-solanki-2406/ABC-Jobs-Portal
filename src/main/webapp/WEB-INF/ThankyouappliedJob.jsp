<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thank You</title>

<link rel="stylesheet" href="/resources/CSS/navigation.css"></link> 

<style type="text/css">
#image_one{  display: block;  margin-left: auto;  margin-right: 20em;  width: 40%;}
.text{text-align: center;  color: #002f65;}
.link{text-align: center;	color: #002f65; padding: 10px; display: block; font-size: 20px;}
.links{text-align: center;	color: #002f65; padding: 10px; display: block;}
.link:hover{color: red;}
</style>
</head>
<body>
        <nav>
            <ul id="menu">
                <li><a href="main_page.html" style="background-image: url('resources/Images/logo_u2.png');"></a></li>
                <span class="main_menu" id="logo_name"><b>Abc Jobs Pte Ltd</b></span>
                <div class="cont_1">
                    <li class="main_menu"><a href="">Discover</a></li>
                    <li class="main_menu"><a href="">Jobs</a></li>             
                    <li class="main_menu"><a href="logingin"> Login</a></li>
					<li class="main_menu"><a href="register"> Register now</a></li>
					<li class="main_menu"><a href="login">Continue Login</a> </li>
					<li class="main_menu"><a href="search">Search</a></li>
                </div>
            </ul>
        </nav>
<h1 class="text">Registered into the Job Successfull</h1>
<img  src="/resources/Images/Thank-you-for-registering.png" id="image_one">


<p style="text-align:center; position: relative;   margin: 300px;">
<h1 class="links">Thank you for selecting Us</h1>
<a href="/user" class="link">Back to Profile</a>
<a href="/login" class="link">Login</a>
</p>
</body>
</html>
