<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<jsp:include page="fragments/header.jsp"/>
    <title>Home</title>
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
            <form action="/course/registration" method="post">
            <h2 class="col-md-6 offset-md-2 mb-5 mt-4">Course Registration</h2>
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="id" class="col-md-2 col-form-label"> ID</label>
                <div class="col-md-4">
                    <input type="text" class="form-control" id="id" name="id" placeholder="eg. COU001" required>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="name" class="col-md-2 col-form-label">Name</label>
                <div class="col-md-4">
                    <input type="text" class="form-control" id="name" name="name" placeholder="eg. Java Web Development" required>
                </div>
            </div>

            <div class="row mb-4">
                <div class="col-md-4"></div>
                <div class="col-md-6">
                    <button type="submit" class="btn btn-secondary col-md-2" data-bs-toggle="modal" data-bs-target="#exampleModal">Add</button>
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Course Registration</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <h5 style="color: rgb(127, 209, 131);">${message}</h5>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success col-md-2" data-bs-dismiss="modal">Ok</button>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
    <div id="testfooter">
        <span>Copyright &#169; ACE Inspiration 2022</span>
    </div>

<jsp:include page="fragments/footer.jsp"/>
</body>
</html>
