<%--
  Created by IntelliJ IDEA.
  User: HieuLe
  Date: 3/3/2022
  Time: 8:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>AssignmentTable-List</title>
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
<%@ include file="common/header.jsp" %>
<div class="container">
    <a type="button" class="btn btn-primary btn-md ml-sm-3 mt-5"
       href="${pageContext.request.contextPath}/list-assignments">Quay lại</a>

    <table class="table table-striped table-dark" id="table-data">
        <thead>
        <tr>
            <th scope="col">ID Lái xe</th>
            <th scope="col">Lái xe</th>
            <th scope="col">Tổng khoảng cách</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="assignmentTable" items="${assignmentTables}">
            <tr>
                <td class="fullName">${assignmentTable.driver.id}</td>
                <td class="id">${assignmentTable.driver.fullName}</td>
                <td class="distance">${assignmentTable.totalDistance} Km</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
