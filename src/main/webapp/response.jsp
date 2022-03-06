<%--
  Created by IntelliJ IDEA.
  User: HieuLe
  Date: 3/4/2022
  Time: 4:19 PM
  To change this template use File | Settings | File Templates.
--%>
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
        .feedback{
            color: cadetblue;
            text-align: center;
        }
        .container{
            margin-top: 10%;
        }
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
</head>
<body>
<%@ include file="common/header.jsp" %>
<div class="container">
    <h4 class="feedback">
        <a href="${pageContext.request.contextPath}/list-assignments">${message}</a>
    </h4>
    <p class="feedback">Thông tin không hơp lệ</p>
</div>

</body>
</html>
