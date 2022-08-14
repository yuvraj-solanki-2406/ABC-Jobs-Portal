<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html lang="en" xmlns:th="https://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="icon" type="image/x-icon" href ="logo_u2.ico">
    <link rel="shortcut icon" href="/resources/Images/logo_u2.png" type="image/x-icon">
 <link rel="stylesheet" href="/resources/CSS/navigation.css"></link> 
    
   <style type="text/css">
    #new_links{
    margin-left: 28em;
    }
   #new_links li{
	display: inline;	list-style: none;	padding: 10px;
    }
    #new_links li a{
    font-size: 22px;	font-style: verdana;	color: #002f65;	text-decoration: none;
	}
	#new_links li a:hover{
		text-decoration: line;
	}
   </style> 
    
</head>
<body>
<!-- navigation menu -->
    <div class="navigation">
        <nav>
            <ul id="menu">
                <span class="main_menu" id="logo_name"><b>Abc Jobs Pte Ltd</b></span>
                <div class="cont_1">
                    <li class="main_menu"><a href="#">Discover</a></li>
                    <li class="main_menu"><a href="#">Jobs</a></li>             
                    <li class="main_menu"><a href="/login"> Login</a></li>
					<li class="main_menu"><a href="register"> Register now</a></li>
					<li class="main_menu"><a href="search">Search</a> </li>
                </div>
            </ul>
        </nav>
    </div>
    <div class="image_one">
        <img src="/resources/Images/hero_banner_1_u16.png" alt="hero n=banner" id="image_one">
        <p id="heading">Welcome to the Professional Portal</p>
        <p id="sub_heading">Explore the opportunities <br> of Modern World</p>
    </div>
    <div class="image_two">
        <img src="/resources/Images/hero_banner_2_u14.jpg" alt="hero banner two" id="image_two"><br>
        <p id="heading_two">Make a Global Community</p><br><br>
        <p id="sub_heading_two">Make professional friends<br>Share the knowledge and <br>Learn from Others</p>
    </div>

</body>
<script>
    function call() {
        window.location="registration_form";
    }
    function signIn(){
        window.location="login.html"
    }
</script>
</html>
