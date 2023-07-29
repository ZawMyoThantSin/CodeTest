<%@ page import="code.models.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="fragments/header.jsp"/>
    <% User user =(User) session.getAttribute("user");%>
    <title>Welcome</title>
</head>

<body>
<div id="testheader">
    <div class="container">
        <div class=row>
            <div class="col-md-5 ">
                <a href="/student/registration"><h3>Student Registration</h3></a>
            </div>
            <div class="col-md-6">

                <p>User: <%=user.getUserId()%> <%=user.getName()%></p>
                <p>Current Date : ${date} </p>
            </div>
            <div class="col-md-1" >
                <input type="button" class="btn-basic" id="lgnout-button" value="Log Out" onclick="location.href='/'">
            </div>
        </div>
    </div>

</div>

<div class="sidenav">

    <button class="dropdown-btn" > Class Management <i class="fa fa-caret-down"></i></button>

    <div class="dropdown-container">
        <a href="/course/registration">Course Registration </a>
        <a href="/student/registration">Student Registration </a>
        <a href="/student/search">Student Search </a>
    </div>
    <a href="/user/management">Users Management</a>
</div>


<div class="main-contents">
    <div id="contents">
        <h3>Welcome Back...! <br><br>
            Enjoy this project and try your best in your own!</h3>
    </div>

</div>
<div id="testfooter">
    <span>Copyright &#169; ACE Inspiration 2022</span>
</div>
<jsp:include page="fragments/footer.jsp"/>
</body>

</html>




