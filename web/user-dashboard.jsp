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

                                        <style>
                                            @import url('https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@300&family=Cabin:wght@500&family=Kalam:wght@700&display=swap');
                                            @import url('https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@300&family=Kalam:wght@700&display=swap');

                                            body {
                                                background-color: rgba(247, 211, 211, 0.76);
                                                font-family: 'Cabin', sans-serif;
                                            }

                                            .button-btn {
                                                background: #EFA9A9;
                                                border: 2px solid rgba(0, 0, 0, 0.27);
                                                box-sizing: border-box;
                                                font-size: 30px;
                                                width: 400px;
                                            }

                                            .button-btn:hover {
                                                background: #EFA9A9;
                                                border: 3px solid rgba(0, 0, 0, 0.27);

                                            }

                                            .button-box {
                                                justify-content: center;
                                            }

                                            .box {
                                                margin-top: -50px;
                                            }

                                            i {
                                                size: 100px;
                                            }

                                            .user-icon {
                                                text-align: right;
                                                padding-right: 10px;
                                            }
                                            .logo img {
                                                width: 90%;
                                                margin-left: 70px;
                                            }
                                            button::placeholder {
                                                font-size: 15px;
                                                color:aliceblue;
                                            }

                                        </style>

                                        <body>
                                            <div class="user-icon">
                                                <a class="btn" href="" target="_blank" rel="noopener noreferrer">
                                                    <svg xmlns="user-changeInfo.jsp" width="50" height="50" fill="currentColor" class="bi bi-person-fill"
                                                         viewBox="0 0 16 16">
                                                        <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z" />
                                                    </svg>
                                                </a>
                                            </div>


                                            <div class="container">
                                                <div class="logo">
                                                    <img src="img/logo.png" alt="logo">
                                                </div>
                                                <div class="box">
                                                    <div class="d-grid gap-2 mb-4 button-box">
                                                        <form action="checkAttendanceServlet" method="post">
                                                            <button class="checkAttendance btn btn-primary button-btn" type="submit">ĐIỂM DANH</button>
                                                        </form>
                                                    </div>
                                                    <div class="d-grid gap-2 button-box">
                                                        <form action="dayOffServlet" method="post">
                                                            <button class="dayOff btn btn-primary button-btn" type="submit">NGHỈ PHÉP</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                        </body>

                                        </html>
