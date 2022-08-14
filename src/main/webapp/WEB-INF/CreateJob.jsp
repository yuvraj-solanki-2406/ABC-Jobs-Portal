<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Jobs</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/resources/CSS/nav_cretejob.css">
    <link rel="shortcut icon" href="/resources/Images/logo_u2.png" type="image/x-icon">
    <style>.text-muted{font-size:14px;}</style>
</head>
<body>
<body>
    <div class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">

            <nav>
                <ul id="menu" class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-items"><a href="main_page.html"><img src="/resources/Images/logo_u2.png" alt="Logo"
                                id="logo_image"></a></li>
                    <span class="main_menu" id="logo_name"><b>ABC Jobs Pte Ltd</b></span>
                    <div class="cont_1">
                        <li class="main_menu"><a href="discover.html">Discover</a></li>
                        <li class="main_menu"><a href="jobs.html">Jobs</a></li>
                        <li class="main_menu"><a href="people.html">People</a></li>
                        <li class="main_menu"><a href="contact.html">Contact Us</a></li>
                        <li class="main_menu"><a href="about.html">About Us</a></li>
                    </div>
                </ul>
            </nav>
        </div>
    </div>

    <div class="jumbotron">
        <div class="title">
            <h1 class="display-5">Post a Job</h1>
            <p id="para_1">Make your work easy with a team</p>
        </div>
    </div>

    <div class="container">
        <div class="col-md-8">
            <sf:form action="submitJob" method="post" modelAttribute="jobData">
                <div class="form-group">
                    <label for="author_name" class="form-label">Name</label>
                    <sf:input type="text" name="author" id="name" class="form-control" path="author" placeholder="Write Full Name"/>
                    <sf:errors path="author" class="errors"></sf:errors>                 
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <sf:input type="email" name="email" id="email" class="form-control" path="email" placeholder="Write your Email"/>
                    <sf:errors path="email" class="errors"></sf:errors>
                </div>
                <div class="form-group">
                    <label for="company">Company</label>
                    <sf:input type="text" name="company" id="company" class="form-control" path="company"/>
                    <sf:errors path="company" class="errors"></sf:errors>
                </div>
                <div class="form-group">
                    <label for="salary">Salary<span class="text-muted">(In Indian Rupee)</span></label>
                    <sf:input name="salary" id="salary" class="form-control" placeholder="in Rupees" path="salary" />
                    <sf:errors path="salary" class="errors"></sf:errors>
                </div>
                <div class="form-group">
                    <label for="time">Working Hours</label>
                    <sf:input type="number" name="working_hours" id="working_hours" class="form-control" path="working_hours"/>
                    <sf:errors path="working_hours" class="errors"></sf:errors>
                </div>

                <div class="form-group" id="old_job_title">
                    <label for="job_Title">Job Title</label>
                    
                    <sf:select class="form-control" path="job_Title">
                        <sf:option class="text-muted" path="job_Title" value="job_Title">--Select Job Title--</sf:option>
                        <sf:option path="job_Title" value="Software Engineer">Software Engineer</sf:option>
                        <sf:option path="job_Title" value="Data Anaylst">Data Anaylst</sf:option>
                        <sf:option path="job_Title" value="Frontend Develope">Frontend Developer</sf:option>
                        <sf:option path="job_Title" value="Back end Developer">Back end Developer</sf:option>
                        <sf:option path="job_Title" value="Java Developer">Java Developer</sf:option>
                        <sf:option path="job_Title" value="Full Stack Web Developer">Full Stack Web Developer</sf:option>
                        <sf:option id="other" onclick="change()" path="job_Title" value="job_Title">Any Others</sf:option>
                    </sf:select>
                    <sf:errors path="job_Title" class="errors"></sf:errors>
                </div><a></a>
                <div class="form-group">
                    <label for="details">Job Details</label><br>
                    <textarea name="details" id="details" cols="98" rows="5" placeholder="Write Here" path="details" class="form-control"></textarea>
                    <sf:errors path="details" class="errors"></sf:errors>
                </div>
                
                <div class="form-group" id="post_btn">
                    <input type="submit" value="Post Job" class="btn btn-primary" id="post">
                </div>
            
            </sf:form>
            
        </div>
        
    </div>

    <div style="visibility: hidden;">
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias impedit cumque eligendi provident
            accusamus. Ut rerum delectus eveniet impedit consequatur fugit dignissimos et deserunt nam beatae totam
            culpa, excepturi <suscipit class="lore">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore
                fugit iure libero pariatur incidunt sunt architecto sint quis vitae, eius consectetur a impedit
                aspernatur magnam obcaecati culpa quo unde similique?Lorem ipsum dolor sit amet consectetur adipisicing
                elit. Accusantium blanditiis quibusdam distinctio esse. Natus repellat architecto neque, doloribus, in
                corrupti nemo aliquam porro, cupiditate beatae ut commodi quae dolore illo.</suscipit>
        </p>
    </div>

</body>
</html>