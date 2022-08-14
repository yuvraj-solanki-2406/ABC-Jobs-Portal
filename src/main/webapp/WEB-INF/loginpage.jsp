<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="shortcut icon" href="logo_u2.ico" type="image/x-icon">
    <link rel="stylesheet" href="/resources/CSS/navigation.css">
    <link rel="stylesheet" href="/resources/CSS/login.css">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
        integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

</head>

<body>
    <nav>
        <ul id="menu">
            <li><a href="main_page.html"><img src="resources/Images/logo_u2.png" alt="Logo" id="logo_image"></a></li>
            <span class="main_menu" id="logo_name"><b>ABC Jobs Pte Ltd</b></span>
            <div class="cont_1">
                <li class="main_menu"><a href="#">Discover</a></li>
                <li class="main_menu"><a href="#">Jobs</a></li>
                <li class="main_menu"><a href="#">People</a></li>
                <li class="main_menu"><a href="#">Contact Us</a></li>
                <li class="main_menu"><a href="#">About Us</a></li>
            </div>
        </ul>
    </nav>
    <img src="resources/Images/circle image.png" alt="circle image" id="circle_image">

    <span id="new"><b>New User</b></span>
    <button type="submit" id="register_btn" onclick="register()">Click Here For <br> Registration </button>

    <div class="login_form">
   
    	<sf:form action="/login" method="POST">
    	
        <label for="username" class="form-label">Username</label>
        <input type="text" name="username" id="username" class="form-control">

        <label for="password" class="form-label">Password</label>
        <input type="password" name="password" id="password" class="form-control">
        <a href="forget_password.html" id="f_password">Forget Password</a>
        <br><br>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>  
        <button type="submit" id="login"><b>Login</b></button>
        
        </sf:form>
    </div>
</body>
<script>
    function register() {
        window.location = "registration_form.jsp"
    }
</script>

</html>