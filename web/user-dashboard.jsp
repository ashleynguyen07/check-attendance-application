<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="css/home.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@300&display=swap" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>

    </head>

    <%@include file="includes/style.jsp" %>

    <body>
        <%
            String username = (String)session.getAttribute("username");
        %>

        <%@include file="includes/header.jsp" %>


        <div class="container">
            <div class="logo">
                <img src="img/logo.png" alt="logo">
            </div>

            <div class="box">
                <div class="d-grid gap-2 mb-4 button-box">
                    <a href="user-checkAttendance.jsp" class="btn btn-primary button-btn">ĐIỂM DANH</a></p>
                </div>
                <div class="d-grid gap-2 button-box">
                    <a href="user-dayOff.jsp" class="btn btn-primary button-btn">NGHỈ PHÉP</a></p>
                </div>

            </div>

    </body>

</html>
