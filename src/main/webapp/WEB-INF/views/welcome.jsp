<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="fragments/header.jsp"/>
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
                <p>User: USR001 Harry</p>
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
<script>
    /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
    var dropdown = document.getElementsByClassName("dropdown-btn");
    var i;

    for (i = 0; i < dropdown.length; i++) {
        dropdown[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var dropdownContent = this.nextElementSibling;
            if (dropdownContent.style.display === "block") {
                dropdownContent.style.display = "none";
            } else {
                dropdownContent.style.display = "block";
            }
        });
    }
</script>
</body>

</html>




