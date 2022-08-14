<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html xmlns:th="www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Search</title>

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
			<span class="main_menu" id="logo_name"><b>Abc Jobs Pte Ltd</b></span>
			<div class="cont_1">
				<li class="main_menu"><a href="#">Discover</a></li>
				<li class="main_menu"><a href="#">Jobs</a></li>
				<li class="main_menu"><a href="login"> Login</a></li>
				<li class="main_menu"><a href="addL"> Register now</a></li>
				<li class="main_menu"><a href="showdata">Show Learners</a></li>
				<li class="main_menu"><a href="search">Search</a></li>
			</div>
		</ul>
	</nav>
	<div id="head">
		<h1 id="heading">
			<strong>Search</strong>
		</h1>
		<hr id="line">
	</div>

	
	 
		<div class="col-md-3" style="visibility:hidden;"></div>
		
		<sf:form action="/searches" modelAttribute="searchingUser" method="get" id="forms">
		<div class="col-md-6">
		<input type="text" name="ID" class="form-control" required ><br>
		<button type="submit" class="btn btn-info" style="margin-left: 290px;margin-right: auto;">Search</button>
		</div>
		</sf:form>
		
	
		<Table border=1 style="text-align: center; margin: 4px; visibility:hidden; "
			class="table table-bordered table-hover">
			<tr>
				<th scope="col" style="text-align: center;">User ID</th>
				<th scope="col" style="text-align: center;">First Name</th>
				<th scope="col" style="text-align: center;">Last Name</th>
				<th scope="col" style="text-align: center;">Email</th>
				<th scope="col" style="text-align: center;">Password</th>
				<th scope="col" style="text-align: center;">Username</th>
			<tr>

				<dd:forEach var="learner" items="${learnerinfo}">

					<tr>
						<td>${learner.userId }</td>
						<td>${learner.first_name}</td>
						<td>${learner.last_name}</td>
						<td>${learner.mailid}</td>
						<td>${learner.password}</td>
						<td>${learner.userName}</td>
					</tr>

				</dd:forEach>
		</Table>
		
		<!-- 
  <table class="table table-bordered table-sm mt-2">
    <thead>
      <tr>
        <th>Id</th>
        <th>Owner Name</th>
        <th>Shop Type</th>
        <th>Shop Number</th>
        <th>Address</th>
        <th>Country</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
      <tr th:each="l : ${list}" th:field="${l}">
        <td th:text="${lStat.index+1}"></td>
        <td th:text="${l.ownerName}"></td>
        <td th:text="${l.shopType}"></td>
        <td th:text="${l.shopNo}"></td>
        <td th:text="${l.address}"></td>
        <td th:text="${l.country}"></td>
        <td>
        <a th:href="@{/update/{id}(id=${l.id})}" ><i class="fa fa-edit" ></i></a>
        <a th:href="@{/delete/{id}(id=${l.id})}" ><i class="fa fa-remove"></i></a>
        </td>
      </tr>
    </tbody>
  </table>
</div>
 
 -->
</body>
</html>