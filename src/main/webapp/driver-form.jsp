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
    <title>Title</title>
    <style>
        body {
            background-image: url("https://w.wallhaven.cc/full/rd/wallhaven-rdwjj7.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        label{
            color: cadetblue;
        }
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
</head>
<body>
<%@ include file="common/header.jsp"%>
<div class="container">
    <h1 style="text-align: center">DRIVER FORM</h1>
    <form class="needs-validation" modelAttribute="driver" method="POST">
        <div class="form-group mb-3">
            <label for="fullName">Name</label>
            <input path="fullName" type="text" class="form-control" id="fullName" placeholder="Enter name" name="fullName"
                   required
                   maxlength="50">
            <span id="name_error"></span>
        </div>
        <div class="form-group mb-3">
            <label for="address">Address</label>
            <input path="address" type="text" class="form-control" id="address" placeholder="Enter address" name="address"
                   required
                   maxlength="50">
            <span id="address_error"></span>
        </div>
        <div class="form-group mb-3">
            <label for="phoneNumber">Mobie phone</label>
            <input path="phoneNumber" type="number" class="form-control" id="phoneNumber" placeholder="Enter phone"
                   name="phoneNumber" required >
            <span id="phone_error"></span>
        </div>
        <div class="form-group mb-5">
            <label for="driveLevel" style="margin-right: 10px">DriveLevel</label>
            <select path="driveLevel" id="driveLevel" name="driveLevel" style="padding-right: 20px;padding-left: 20px">
                <option value="A">A</option>
                <option value="B">B</option>
                <option value="C">C</option>
                <option value="D">D</option>
                <option value="E">E</option>
                <option value="F">F</option>
            </select>
            <span id="driveLevel_error"></span>
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
