<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Uploaded Photos</title>
</head>
<body>
<h1>Uploaded Photos</h1>
<c:forEach items="${photos}" var="photo">
    <div>
        <h3>${photo.name}</h3>
        <p>${photo.description}</p>
        <img src="${pageContext.request.contextPath}/uploads/${photo.file}" width="300" height="200">
    </div>
</c:forEach>
</body>
</html>

