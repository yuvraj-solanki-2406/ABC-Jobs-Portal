<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<meta charset="ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
 integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
        integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<link rel="icon" type="image/x-icon" href ="logo_u2.ico">
 <link rel="stylesheet" href="/resources/CSS/navigation.css"></link> 
 <style type="text/css">
 body{background: #b2dff526;}
 #card{width: 42rem; height: 49rem; margin-left: 35%; padding: 5px; border:1px solid #002f65;background: white;}
 #btn_1{margin-top: 5px; height: 30px;}
 #btn_2{margin-top: 5px; height: 30px;}
 #img{height: 13rem; width: 41rem; padding: 2px;}
 #head{text-align: center;}
#heading{color: #002f65d9;text-align: center;font-family: verdana, georgia;margin-left: 3px;}
#line{width: 100px; border: 3px solid #002f65;margin-top: 1px;size: a3;}
#input_box{width: 60%;display:block; margin:auto;}

 </style>
</head>

<body>

 <div class="navigation">
        <nav>
            <ul id="menu">
                <span class="main_menu" id="logo_name"><b>Abc Jobs Pte Ltd</b></span>
                <div class="cont_1">
                    <li class="main_menu"><a href="#">Discover</a></li>
                    <li class="main_menu"><a href="#">Jobs</a></li>             
                    <li class="main_menu"><a href="login"> Login</a></li>
					<li class="main_menu"><a href="register"> Register now</a></li>
					<li class="main_menu"><a href="showdata">Show Learners</a> </li>
					<li class="main_menu"><a href="search">Search</a></li>
                </div>
            </ul>
        </nav>
    </div>


<form action="deletedata" method="get">
		<div id="head">
        <h1 id="heading"><strong>Delete the Learner</strong></h1>
        <hr id="line">
        </div>
<div id="input_box"><input type="text" placeholder="Type learner Id to be deleted" name="d_Id" class="form-control">
</div>
 <br><br>
<p style="text-align:center;"><input type="submit" value="Delete" class="btn btn-primary"></p>


</form>

</body>
</html>