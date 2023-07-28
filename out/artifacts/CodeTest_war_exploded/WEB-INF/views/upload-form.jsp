<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 7/28/2023
  Time: 7:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Photo Upload Form</title>
</head>
<body>
<h1>Upload a Photo</h1>
<form action="/upload" method="post" enctype="multipart/form-data">
    <label for="name">Photo Name:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="description">Description:</label>
    <input type="text" id="description" name="description" required><br>

    <label for="file">Select Photo:</label>
    <input type="file" id="file" name="file" accept="image/*" required><br>

    <button type="submit">Upload Photo</button>
</form>
</body>
</html>
