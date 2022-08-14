<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Learners</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
 integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
        integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <link rel="stylesheet" href="/resources/CSS/navigation.css"></link> 

</head>
<body>
  <nav>
       <ul id="menu">
            <li><a href="/"><img src="/resources/Images/logo_u2.png" id="logo_image"></a></li>
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
<h1 style="text-align:center;">Leaner Details</h1>

<Table border=1 style="text-align:center; margin:4px;" class="table table-bordered table-hover">
<tr>
<th scope="col" style="text-align:center;">User ID</th>
<th scope="col" style="text-align:center;">First Name</th>
<th scope="col" style="text-align:center;">Last Name</th>
<th scope="col" style="text-align:center;">Email</th>
<th scope="col" style="text-align:center;">Username</th>
<th scope="col" style="text-align:center;">Address</th>
<tr>

<dd:forEach var="learner" items="${learnerinfo}">

<tr>

<td>${learner.userId }</td>
<td>${learner.first_name}</td>
<td>${learner.last_name}</td>
<td>${learner.mailid}</td>
<td>${learner.userName}</td>
<td>${learner.address}</td>
<td><a href="/update/${learner.userId}">Edit</a></td>
</tr>

</dd:forEach>
</Table>

</body>
</html>