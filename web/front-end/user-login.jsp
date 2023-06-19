<%-- 
    Document   : user-login
    Created on : Jun 4, 2023, 12:16:43 AM
    Author     : tramy
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="front-end/css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@300&display=swap" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>

    </head>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@300&family=Cabin:wght@500&family=Kalam:wght@700&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@300&family=Kalam:wght@700&display=swap');

        body {
            width: 100%;
            margin: 0;
            padding: 0;
            background-color: rgba(247, 211, 211, 0.76);
            font-family: 'Cabin', sans-serif;
        }

        h1 {
            font-family: 'Kalam', cursive;
            font-size: 100px;
            color: #f49b9b;
        }

        .login-btn {
            background: #EFA9A9;
            border: 1px solid rgba(0, 0, 0, 0.27);
            box-sizing: border-box;
            margin-top: 10px;
        }
        .login-btn:hover {
            background: #EFA9A9;
            border: 3px solid rgba(0, 0, 0, 0.27);

        }
    </style>

    <body>
        <div class="container position-relative">
            <div class="left-side">
                <img src="front-end/img/logo.png" alt="logo">
            </div>
            <div class="right-side">
                <h1>Welcome!</h1>
                <form name="loginForm" action="dashboard.jsp" method="post" onsubmit="return validateForm()">
                    <div class="form-floating mb-3 lh-1">

                        <input type="text" class="form-control" id="username" placeholder="Username" required="">
                        <label for="floatingInput">Username</label>
                    </div>
                    <div class="form-floating mb-3 lh-1">
                        <input type="password" class="form-control" id="password" placeholder="Password" required="">
                        <label for="floatingPassword">Password</label>

                    </div>
                    <div class="d-grid gap-2">
                        <button class="btn btn-primary login-btn" type="submit">LOGIN</button>
                    </div>
                    <div id="error" style="color: red;"></div>

                </form>
            </div>

        </div>
    </body>

</html>
