<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<jsp:include page="fragments/header.jsp"/>


<title></title>
</head>
<body class="login-page-body">

<div class="login-page">
    <div class="form">
        <div class="login">
            <div class="login-header">
                <h1>Welcome!</h1>
            </div>
        </div>
        <form class="login-form" action="/login" method="post" >
            <input type="text" placeholder="User ID" name="userId" required/>
            <input type="password" placeholder="Password" name="password" required/>
            <p style="color: red;font-size: 12px;">${message}</p>
            <button type="submit">login</button>
            <p class="message">Not registered? <a href="/user/registration">Create an account</a></p>
        </form>
    </div>
</div>
<jsp:include page="fragments/footer.jsp"/>
</body>
</html>
