<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Outcome</title>
    
    <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="/resources/CSS/navigation.css"></link> 
    <link rel="stylesheet" href="/resources/CSS/search.css"></link>
</head>
<body>
 <nav>
       <ul id="menu">
            <li><a href="main_page.html" style="background-image: url('/resources/Images/logo_u2.png');"></a></li>
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

<div id="head">
		<h1 id="heading">
			<strong>User Details</strong>
		</h1>
		<hr id="line">
	</div>

<Table border=1 style="text-align:center;" class="table table-hover table-bordered">
<tr>
<th>User Id</th>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Username</th>
<th>Address</th>
</tr>

<dd:forEach var="lsearch" items="${searched}">
<tr>
<td>${lsearch.userId }</td>
<td>${lsearch.first_name }</td>
<td>${lsearch.last_name }</td>
<td>${lsearch.mailid }</td>
<td>${lsearch.userName }</td>
<td>${lsearch.address }</td>
</tr>
</dd:forEach>

</Table>
</body>
</html>