<%--
  Created by IntelliJ IDEA.
  User: HieuLe
  Date: 3/3/2022
  Time: 10:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Header</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark ">
    <!-- Brand/logo -->
    <a class="navbar-brand col-7" href="${pageContext.request.contextPath}">
        <img src="https://cdn2.steamgriddb.com/file/sgdb-cdn/logo_thumb/6822951732be44edf818dc5a97d32ca6.png" alt=""
             style="height: 50px">
    </a>

    <!-- Links -->
    <ul class="navbar-nav col-5 d-flex justify-content-around" style="margin-right: 150px">
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/list-drivers">Driver</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/list-lines">Line</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/list-assignments">Assigment</a>
        </li>
    </ul>
</nav>
</body>
</html>
