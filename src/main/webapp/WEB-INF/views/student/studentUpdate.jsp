<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 7/27/2023
  Time: 10:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="../fragments/header.jsp"/>
    <title>Student Update</title>
</head>

<body>
<div id="testheader">
    <div class="container">
        <div class=row>
            <div class="col-md-5 ">
                <a href="MNU001.html"><h3>Student Registration</h3></a>
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
</div>
<!-- <div id="testsidebar">Hello World </div> -->
<div class="container">
    <div class="sidenav">

        <button class="dropdown-btn" > Class Management <i class="fa fa-caret-down"></i></button>

        <div class="dropdown-container">
            <a href="/course/registration">Course Registration </a>
            <a href="/student/registration">Student Registration </a>
            <a href="/student/search">Student Search </a>
        </div>
        <a href="/user/management">Users Management</a>
    </div>
    <div class="main_contents">
        <div id="sub_content">
            <form">

            <h2 class="col-md-6 offset-md-2 mb-5 mt-4">Student Update</h2>
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="studentID" class="col-md-2 col-form-label">Student ID</label>
                <div class="col-md-4">
                    <input type="text" class="form-control"  value="STU001" id="studentID" disabled>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="name" class="col-md-2 col-form-label">Name</label>
                <div class="col-md-4">
                    <input type="text" class="form-control" id="name" value="Harry">
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="dob" class="col-md-2 col-form-label">DOB</label>
                <div class="col-md-4">
                    <input type="date" class="form-control" id="dob">
                </div>
            </div>
            <fieldset class="row mb-4">
                <div class="col-md-2"></div>
                <legend class="col-form-label col-md-2 pt-0">Gender</legend>
                <div class="col-md-4">
                    <div class="form-check-inline">
                        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1"
                               checked>
                        <label class="form-check-label" for="gridRadios1">
                            Male
                        </label>
                    </div>
                    <div class="form-check-inline">
                        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                        <label class="form-check-label" for="gridRadios2">
                            Female
                        </label>
                    </div>

                </div>
            </fieldset>

            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="phone" class="col-md-2 col-form-label">Phone</label>
                <div class="col-md-4">
                    <input type="text" class="form-control" id="phone" value="+95 0979772332">
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="education" class="col-md-2 col-form-label">Education</label>
                <div class="col-md-4">
                    <select class="form-select" aria-label="Education" id="education">
                        <option selected>Bachelor of Information Technology</option>
                        <option value="1">Diploma in IT</option>
                        <option value="2">Bachelor of Computer Science</option>

                    </select>
                </div>
            </div>
            <fieldset class="row mb-4">
                <div class="col-md-2"></div>
                <legend class="col-form-label col-md-2 pt-0">Attend</legend>

                <div class="col-md-4">
                    <div class="form-check-inline col-md-2">
                        <input class="form-check-input" type="checkbox" name="gridRadios" id="gridRadios1" value="option1">
                        <label class="form-check-label" for="gridRadios1">
                            PFC
                        </label>
                    </div>
                    <div class="form-check-inline col-md-2">
                        <input class="form-check-input" type="checkbox" name="gridRadios" id="gridRadios2" value="option2">
                        <label class="form-check-label" for="gridRadios2">
                            JWD
                        </label>
                    </div>
                    <div class="form-check-inline col-md-2">
                        <input class="form-check-input" type="checkbox" name="gridRadios" id="gridRadios2" value="option2">
                        <label class="form-check-label" for="gridRadios2">
                            PHP
                        </label>
                    </div>
                    <div class="form-check-inline col-md-2">
                        <input class="form-check-input" type="checkbox" name="gridRadios" id="gridRadios1" value="option1">
                        <label class="form-check-label" for="gridRadios1">
                            OJT
                        </label>
                    </div>


                </div>

                <div class="col-md-6 offset-md-4 mt-4">
                    <div class="form-check-inline col-md-2">
                        <input class="form-check-input" type="checkbox" name="gridRadios" id="gridRadios1" value="option1">
                        <label class="form-check-label" for="gridRadios1">
                            ASP.Net
                        </label>
                    </div>

                    <div class="form-check-inline col-md-2">
                        <input class="form-check-input" type="checkbox" name="gridRadios" id="gridRadios2" value="option2">
                        <label class="form-check-label" for="gridRadios2">
                            Python
                        </label>
                    </div>
                    <div class="form-check-inline col-md-2">
                        <input class="form-check-input" type="checkbox" name="gridRadios" id="gridRadios2" value="option2">
                        <label class="form-check-label" for="gridRadios2">
                            Android
                        </label>
                    </div>

                </div>
                <div class="col-md-6 offset-md-4 mt-4">
                    <div class="form-check-inline col-md-2">
                        <input class="form-check-input" type="checkbox" name="gridRadios" id="gridRadios1" value="option1">
                        <label class="form-check-label" for="gridRadios1">
                            Python
                        </label>
                    </div>

                    <div class="form-check-inline col-md-2">
                        <input class="form-check-input" type="checkbox" name="gridRadios" id="gridRadios2" value="option2">
                        <label class="form-check-label" for="gridRadios2">
                            JavaScript
                        </label>
                    </div>
                    <div class="form-check-inline col-md-3">
                        <input class="form-check-input" type="checkbox" name="gridRadios" id="gridRadios2" value="option2">
                        <label class="form-check-label" for="gridRadios2">
                            React Native
                        </label>
                    </div>

                </div>
            </fieldset>
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="name" class="col-md-2 col-form-label">Photo</label>
                <div class="col-md-4">
                    <input type="file" class="form-control" id="name">
                </div>
            </div>

            <div class="row mb-4">
                <div class="col-md-4"></div>

                <div class="col-md-4">
                    <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Update
                    </button>
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Student Update</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">

                                    <h5 style="color: rgb(127, 209, 131);">Succesfully Update!</h5>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Ok</button>

                                </div>
                            </div>
                        </div>
                    </div>

                    <button type="button" class="btn btn-danger  " onclick="location.href = '/student/search'">
                        Cancel
                    </button>

                </div>

            </div>


            <!--Modal-->

            </form>
        </div>
    </div>
</div>
<div id="testfooter">
    <span>Copyright &#169; ACE Inspiration 2022</span>
</div>

<jsp:include page="../fragments/footer.jsp"/>
</body>

</html>





