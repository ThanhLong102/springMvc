<%--
  Created by IntelliJ IDEA.
  User: HieuLe
  Date: 3/2/2022
  Time: 5:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>line-form</title>
    <style>
        body {
            background-image: url("https://w.wallhaven.cc/full/rd/wallhaven-rdwjj7.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }

        label {
            color: cadetblue;
        }
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
</head>
<body>
<%@ include file="common/header.jsp" %>
<div class="container">
    <h1 style="text-align: center">LINE FORM</h1>
    <form class="needs-validation" modelAttribute="line" method="POST">
        <div class="form-group mb-3">
            <label for="distance">Distance</label>
            <input path="distance" type="number" class="form-control" id="distance" placeholder="Enter distance"
                   name="distance" required step=0.1>
            <span id="distance_error"></span>
        </div>
        <div class="form-group mb-3">
            <label for="stopPoint">StopPoint</label>
            <input path="stopPoint" type="number" class="form-control" id="stopPoint" placeholder="Enter stop point"
                   name="stopPoint" required>
            <span id="stopPoint_error"></span>
        </div>
        <button type="submit" class="btn btn-info" id="saves-button">Save</button>
        <button type="button" onclick=handleReset() class="btn btn-info" id="save-reset">Reset</button>
    </form>
</div>
<script>
    function handleReset() {
        document.getElementById("fullName").value = "";
        document.getElementById("address").value = "";
        document.getElementById("phoneNumber").value = "";
    }
</script>
</body>
</html>
