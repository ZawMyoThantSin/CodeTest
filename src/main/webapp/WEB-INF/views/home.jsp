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
<%--                <p>Please check your data again.</p>--%>
            </div>
        </div>
        <form class="login-form" action="/login"  name="confirm">
            <input type="text" placeholder="User ID"  required/>
            <input type="password" placeholder="Password" required/>
            <button>login</button>
            <p class="message">Not registered? <a href="/user/registration">Create an account</a></p>
        </form>
    </div>
</div>
<jsp:include page="fragments/footer.jsp"/>
</body>
</html>
