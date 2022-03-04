<%--
  Created by IntelliJ IDEA.
  User: HieuLe
  Date: 3/3/2022
  Time: 8:55 PM
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
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>

</head>
<body>
<%@ include file="common/header.jsp"%>
<div class="container">
    <a type="button" class="btn btn-primary btn-md ms-4 mt-5" href="${pageContext.request.contextPath}/add-driver">Add Driver</a>
    <table class="table table-striped table-dark" id="table-data">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Id</th>
            <th scope="col">Họ và tên</th>
            <th scope="col">Địa chỉ</th>
            <th scope="col">Số điện thoại</th>
            <th scope="col">Trình độ</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="driver" items="${drivers}">
            <tr>
                <td>
                    <a type="button" class="btn btn-success"
                       href="${pageContext.request.contextPath}/update-driver?id=${driver.id}">Update</a>
                    <a type="button" class="btn btn-warning"
                       href="${pageContext.request.contextPath}/delete-driver?id=${driver.id}">Delete</a>
                </td>
                <td class="id">${driver.id}</td>
                <td class="fullName">${driver.fullName}</td>
                <td class="address">${driver.address}</td>
                <td class="phoneNumber">${driver.phoneNumber}</td>
                <td class="driveLevel">${driver.driveLevel}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
