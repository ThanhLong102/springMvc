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
    <title>Assignment-List</title>
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
    <nav class="navbar">
        <a type="button" class="btn btn-primary btn-md ml-sm-3 mt-5"
           href="${pageContext.request.contextPath}/add-assignment">Add
            Assigment</a>
        <a type="button" class="btn btn-primary btn-md ml-sm-3 mt-5"
           href="${pageContext.request.contextPath}/list-assignment-tables">Statistical</a>
    </nav>
    <nav class="navbar">
        <form action="${pageContext.request.contextPath}/list-assignment-drivers" method="get">
            <label>
                <input name="name" id="name" class="form-control" type="text" placeholder="Search">
            </label>
            <button class="btn btn-success">Search</button>
        </form>
        <form action="${pageContext.request.contextPath}/list-filter-assignments" method="get">
            <label for="filter"></label><select path="filter" id="filter" name="filter"
                                                style="padding:10px; border-radius: 5px;">
            <option value="driver-name">Driver name</option>
            <option value="turn-number">Turn number</option>
        </select>
            <button class="btn btn-success">Sort By</button>
        </form>
    </nav>


    <table class="table table-striped table-dark" id="table-data">
        <thead>
        <tr>
            <th scope="col">Lái xe</th>
            <th scope="col">#</th>
            <th scope="col">ID Tuyến</th>
            <th scope="col">Khoảng cách tuyến</th>
            <th scope="col">Số lượt</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="assignmentTable" items="${assignmentTables}">
            <tr>
            <td class="fullName">${assignmentTable.driver.fullName}</td>
            <c:forEach var="lineTurn" items="${assignmentTable.lineTurns}">
                <td>
                    <a type="button" class="btn btn-success"
                       href="${pageContext.request.contextPath}/update-assignment?driverId=${assignmentTable.driver.id}&lineId=${lineTurn.line.id}">Update</a>
                    <a type="button" class="btn btn-warning"
                       href="${pageContext.request.contextPath}/delete-assignment?driverId=${assignmentTable.driver.id}&lineId=${lineTurn.line.id}">Delete</a>
                </td>
                <td class="id">${lineTurn.line.id}</td>
                <td class="distance">${lineTurn.line.distance}</td>
                <td class="turnNumber">${lineTurn.turnNumber}</td>
                </tr>
                <td></td>
            </c:forEach>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
