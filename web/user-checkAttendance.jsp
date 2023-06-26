<%-- 
    Document   : checkAttendance
    Created on : Jun 10, 2023, 5:37:21 PM
    Author     : tramy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

    <head>
        <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Document</title>
                    <link rel="stylesheet" href="home.css">
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
                                                background-color: rgba(247, 211, 211, 0.76);
                                                font-family: 'Cabin', sans-serif;
                                            }

                                            .logo img {
                                                width: 70%;
                                                margin-left: 200px;
                                            }

                                            button::placeholder {
                                                font-size: 15px;
                                                color: aliceblue;
                                            }

                                            .submit-btn {
                                                background: #EFA9A9;
                                                border: 2px solid rgba(0, 0, 0, 0.27);
                                                box-sizing: border-box;
                                                font-size: 20px;
                                                width: 400px;
                                            }

                                            .submit-btn:hover {
                                                background: #EFA9A9;
                                                border: 3px solid rgba(0, 0, 0, 0.27);

                                            }

                                            /* .box-info {
                                                justify-content: center;
                                            } */

                                            .box {
                                                margin-top: -50px;
                                            }

                                            .user-icon {
                                                text-align: right;
                                                padding-right: 10px;
                                            }

                                            #icon {
                                                background-color: #EFA9A9;
                                            }

                                            .box-input {
                                                width: 400px;
                                            }

                                            #select-item {
                                                width: 345px;
                                                border: 2px solid rgb(250, 247, 247);
                                                border-radius: 5px;
                                            }
                                        </style>

                                        <body>
                                            <div class="user-icon">
                                                <a class="btn" href="" target="_blank" rel="noopener noreferrer">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-person-fill"
                                                         viewBox="0 0 16 16">
                                                        <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z" />
                                                    </svg>
                                                </a>
                                            </div>
                                            <%
                                             String username = request.getParameter("username");        
                                            %>

                                            <div class="container">
                                                <div class="logo">
                                                    <img src="img/logo.png" alt="logo">
                                                </div>
                                                <div class="box-info">
                                                    <form action="" method="post">
                                                        <div class="d-grid gap-2 justify-content-center box">
                                                            <div class="input-group mb-3  box-input">
                                                                <div class="input-group-prepend user">
                                                                    <span class="input-group-text" id="icon">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                                                             class="bi bi-person-fill" viewBox="0 0 16 16">
                                                                            <path
                                                                                d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z" />
                                                                        </svg>
                                                                    </span>
                                                                </div>
                                                                <input type="text" id="fullName" name="fullName" value="<%= request.getAttribute("fullName") %>" required>
                                                            </div>

                                                        </div>
                                                        <div class="d-grid gap-2 justify-content-center box-1">
                                                            <div class="input-group mb-3 box-input">
                                                                <div class="input-group-prepend">
                                                                    <span class="input-group-text" id="icon">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                                                             class="bi bi-building" viewBox="0 0 16 16">
                                                                            <path
                                                                                d="M4 2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1ZM4 5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1ZM7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1ZM4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1Zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1Z" />
                                                                            <path
                                                                                d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V1Zm11 0H3v14h3v-2.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5V15h3V1Z" />
                                                                        </svg>
                                                                    </span>
                                                                </div>
                                                                <select class="work-place" id="select-item">
                                                                    <option selected>Choose...</option>
                                                                    <option value="1">Home</option>
                                                                    <option value="2">Company</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="d-grid gap-2 justify-content-center">
                                                            <button class="btn btn-primary submit-btn" type="submit">SUBMIT</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                            </div>
                                        </body>

                                        </html>
