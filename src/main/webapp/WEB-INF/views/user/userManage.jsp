<%@ page import="code.models.User" %>
<%@ page import="java.util.List" %>

<%@ page import="code.daos.UserDao" %>
<%@ page import="code.models.UserView" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="../fragments/header.jsp"/>


    <title>User Management</title>
</head>

<body>
<div id="testheader">
    <div class="container">
        <div class=row>
            <div class="col-md-5 ">
                <a href="/student/registration"><h3>Student Registration</h3></a>
            </div>
            <div class="col-md-6">
<%--                <p>User:</p>--%>
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
            <a href="/student/search">Student Search </a>
        </div>
        <a href="/user/management">Users Management</a>
    </div>
    <div class="main_contents">
        <div id="sub_content">
            <form class="row g-3 mt-3 ms-2">
                <div class="col-auto">
                    <label for="staticEmail2" class="visually-hidden">User Id</label>
                    <input type="text" class="form-control" id="staticEmail2" placeholder="User ID">
                </div>
                <div class="col-auto">
                    <label for="inputPassword2" class="visually-hidden">User Name</label>
                    <input type="text" class="form-control" id="inputPassword2" placeholder="User Name">
                </div>

                <div class="col-auto">
                    <button type="submit" class="btn btn-primary mb-3">Search</button>
                </div>
                <div class="col-auto">
                    <button type="button" class="btn btn-secondary " onclick="location.href = '/user/registration';">
                        Add
                    </button>

                </div>
                <div class="col-auto">
                    <button type="submit" class="btn btn-danger mb-3">Reset</button>
                </div>
            </form>

            <table class="table table-striped" id="stduentTable">
                <thead>
                <tr>
                    <th scope="col">User ID</th>
                    <th scope="col">User Name</th>
                    <th scope="col">Details</th>
                </tr>
                </thead>
                <tbody>
<%

    List<User> users =new UserDao().getAllUser();
    request.setAttribute("users",users);
%>
    <c:forEach items="${users}" var="usr" >
                <tr>
                    <td>${usr.getUserId()}</td>
                    <td>${usr.getName()}</td>
                    <td>
                        <button type="button" class="btn btn-success  " onclick="location.href = '/user/update?userId=${usr.getId()}';">
                            Update
                        </button>
                    </td>
                    <td><button type="submit" class="btn btn-secondary mb-3" data-bs-toggle="modal"
                                data-bs-target="#exampleModal" onclick="location.href='/user/delete?userId=${usr.getId()}'">Delete</button></td>
                </tr>
    </c:forEach>

                </tbody>
            </table>

            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Student Deletion</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">

                            <h5 style="color: rgb(127, 209, 131);">Are you sure want to delete !</h5>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-success col-md-2" data-bs-dismiss="modal">Ok</button>

                        </div>
                    </div>
                </div>
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
