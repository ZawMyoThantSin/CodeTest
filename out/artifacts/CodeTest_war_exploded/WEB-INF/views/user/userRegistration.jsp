<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html>
<html lang="en">

<head>
   <jsp:include page="../fragments/header.jsp"/>

    <title>User Registration</title>
</head>

<body>
<div id="testheader">
    <div class="container">
        <div class=row>
            <div class="col-md-5 ">

            </div>
            <div class="col-md-6">
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
            <a href="#">Course Registration </a>
            <a href="#">Student Registration </a>
            <a href="#">Student Search </a>
        </div>
        <a href="#">Users Management</a>
    </div>
    <div class="main_contents">
        <div id="sub_content">
            <form action="/user/registration" method="post">
             <h2 class="col-md-6 offset-md-2 mb-5 mt-4">User Registration</h2>
                <div class="row mb-4">
                    <div class="col-md-2"></div>
                    <label for="id" class="col-md-2 col-form-label">User Id</label>
                    <div class="col-md-4">
                        <input type="text" class="form-control" id="id" name="id" placeholder="eg. USR001">
                    </div>
                </div>
                <div class="row mb-4">
                    <div class="col-md-2"></div>
                    <label for="name" class="col-md-2 col-form-label">Name</label>
                    <div class="col-md-4">
                        <input type="text" class="form-control" id="name" name="name" placeholder="Your Name...">
                    </div>
                </div>
                <div class="row mb-4">
                    <div class="col-md-2"></div>
                    <label for="email" class="col-md-2 col-form-label">Email</label>
                    <div class="col-md-4">
                        <input type="email" class="form-control" id="email" name="email" placeholder="example@gmail.com">
                    </div>
                </div>

                <div class="row mb-4">
                    <div class="col-md-2"></div>
                    <label for="password" class="col-md-2 col-form-label">Passowrd</label>
                    <div class="col-md-4">
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>
                </div>
                <div class="row mb-4">
                    <div class="col-md-2"></div>
                    <label for="confirmPassword" class="col-md-2 col-form-label">Confirm Passowrd</label>
                    <div class="col-md-4">
                        <input type="password" class="form-control" id="confirmPassword" oninput="checkPassword()" required>
                        <p id="message"></p>
                    </div>
                </div>
                <div class="row mb-4">
                    <div class="col-md-2"></div>
                    <label for="userRole" class="col-md-2 col-form-label">User Role</label>
                    <div class="col-md-4">
                        <select class="form-select" aria-label="Education" id="userRole" name="userRole">
                            <option selected value="Admin">Admin</option>
                            <option value="User">User</option>
                        </select>
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
                                    <h5 class="modal-title" id="exampleModalLabel">Student Registration</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">

                                    <h5 style="color: rgb(127, 209, 131);">Registered Succesfully !</h5>
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
<script>
    function checkPassword() {
        var password = document.getElementById("password").value;
        var confirm_password = document.getElementById("confirmPassword").value;
        var message = document.getElementById("message");

        if (password === confirm_password) {
            message.innerHTML="";
        } else {
            message.innerHTML = "Passwords do not match. Please try again.";
        }
    }
</script>

<jsp:include page="../fragments/footer.jsp"/>
</body>

</html>



