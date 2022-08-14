<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %> 

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    
    <link rel="shortcut icon" href="logo_u2.ico" type="image/x-icon">
    <link rel="stylesheet" href="/resources/CSS/navigation.css">
    <link rel="stylesheet" href="/resources/CSS/registration_form.css">
    
</head>

		<nav>
            <ul id="menu">
                <li><a href="main_page.html" style="background-image: url('resources/Images/logo_u2.png');"></a></li>
                <span class="main_menu" id="logo_name"><b>Abc Jobs Pte Ltd</b></span>
                <div class="cont_1">
                    <li class="main_menu"><a href="#">Discover</a></li>
                    <li class="main_menu"><a href="#">Jobs</a></li>             
                    <li class="main_menu"><a href="login"> Login</a></li>
					<li class="main_menu"><a href="addL"> Register now</a></li>
					<li class="main_menu"><a href="showdata">Show Learners</a> </li>
					<li class="main_menu"><a href="search">Search</a></li>
                </div>
            </ul>
        </nav>
        
      <h1 style="color: #002f67; text-align:center;">Registration Form</h1>
      
    <table style="border: 0px solid red; margin-left: auto; margin-right: auto; margin-top: -1em;">
    
<sf:form action="/myreg" method="post" class="form_text" modelAttribute="data" id="form_reg">

<tr>
<td><sf:label path="first_name" for="fname" class="form_label">First Name</sf:label></td>
<td><sf:input path="first_name" class="form_control"/></td> 
<td><sf:errors path="first_name" Class="error" /></td>
</tr>

<tr>
<td><sf:label path="last_name" for="lname" class="form_label">Last Name</sf:label></td>
<td><sf:input path="last_name" class="form_control" /></td>
<td><sf:errors path="last_name" Class="error" /> </td>
</tr>

<tr>
<td><sf:label path="mailid" for="email" class="form_label">Email</sf:label></td>
<td><sf:input path="mailid" class="form_control" /></td>
<td><sf:errors path="mailid" Class="error" /></td>
</tr>

<tr>
<td><sf:label path="userName" for="userName" class="form_label">Username</sf:label></td>
<td><sf:input path="userName" class="form_control" /></td>
<td><sf:errors path="userName" Class="error" /> </td>
</tr>

<tr>
<td><sf:label path="password" class="form_label">Password</sf:label></td>
<td><sf:input path="password" class="form_control" type="password" /></td> 
<td><sf:errors path="password" Class="error" /></td> 
</tr>

<tr>
<td><sf:label path="address" for="address" class="form_label">Address</sf:label></td>
<td><sf:input path="address" class="form_control" /></td>
<td><sf:errors path="address" Class="error" /> </td>
</tr>

<tr>
<td></td>
<td><input type="submit" id="submit_btn" value="Submit" class="btn btn-transparent btn-block" ></td>
</tr>

</sf:form>

</table>
</body>

<script>
    function signIn() {
            window.location="login.html"
    }
</script>
</html>