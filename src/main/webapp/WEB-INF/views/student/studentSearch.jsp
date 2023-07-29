
<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="../fragments/header.jsp"/>

    <title>Student Search</title>
</head>

<body>
<div id="testheader">
    <div class="container">
        <div class=row>
            <div class="col-md-5 ">
                <a href="/student/registration"><h3>Student Registration</h3></a>
            </div>
            <div class="col-md-6">
                <p>User: USR001 Harry</p>
                <p>Current Date : ${date} </p>
            </div>
            <div class="col-md-1" >
                <input type="button" class="btn-basic" id="lgnout-button" value="Log Out" onclick="location.href='/'">
            </div>
        </div>
    </div>

</div>
<!-- <div id="testsidebar">Hello World </div> -->
<div class="container">
    <div class="sidenav">

        <button class="dropdown-btn" > Class Management <i class="fa fa-caret-down"></i></button>

        <div class="dropdown-container">
            <a href="/course/registration">Course Registration </a>
            <a href="/student/registration">Student Registration </a>
            <a href="#">Student Search </a>
        </div>
        <a href="/user/management">Users Management</a>
    </div>
    <div class="main_contents">
        <div id="sub_content">
            <form class="row g-3 mt-3 ms-2">
                <div class="col-auto">
                    <label for="staticEmail2" class="visually-hidden">studentID</label>
                    <input type="text"  class="form-control" id="staticEmail2" placeholder="Student ID">
                </div>
                <div class="col-auto">
                    <label for="inputPassword2" class="visually-hidden">studentName</label>
                    <input type="text" class="form-control" id="inputPassword2" placeholder="Student Name">
                </div>
                <div class="col-auto">
                    <label for="inputPassword2" class="visually-hidden">Course</label>
                    <input type="text" class="form-control" id="inputPassword2" placeholder="Course">
                </div>
                <div class="col-auto">
                    <button type="submit" class="btn btn-success mb-3">Search</button>
                </div>
                <div class="col-auto">
                    <button type="submit" class="btn btn-secondary mb-3">Reset</button>
                </div>
            </form>
            <div>
                <table class="table table-striped" id="stduentTable">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Student ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Course Name</th>
                        <th scope="col">Details</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>STU0001</td>
                        <td>Thu</td>
                        <td>Java</td>
                        <td>
                            <a href="STU002.html"><button type="submit" class="btn btn-secondary mb-2">See More</button></a>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>STU0001</td>
                        <td>Thu</td>
                        <td>java</td>
                        <td>
                            <a href="STU002.html"><button type="submit" class="btn btn-secondary mb-2">See More</button></a>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>STU0001</td>
                        <td>Thu</td>
                        <td>Java</td>
                        <td>
                            <a href="/student/details"><button type="submit" class="btn btn-secondary mb-2">See More</button></a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<div id="testfooter">
    <span>Copyright &#169; ACE Inspiration 2022</span>
</div>
<jsp:include page="../fragments/footer.jsp"/>
</body>

</html>




