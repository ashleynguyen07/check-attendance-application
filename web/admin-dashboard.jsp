<%-- 
    Document   : admin-dashboard
    Created on : Jul 3, 2023, 12:27:45 PM
    Author     : tramy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
        <title>crud dashboard</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!----css3---->
        <link rel="stylesheet" href="css/custom.css">


        <!--google fonts -->

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">


        <!--google material icon-->
        <link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet">

    </head>

    <body>



        <div class="wrapper">

            <div class="body-overlay"></div>

            <!-------sidebar--design------------>

            <div id="sidebar">
                <div class="sidebar-header">
                    <a href="#">
                        <img src="img/logo.png" class="img-fluid" />
                    </a>
                </div>
                <ul class="list-unstyled component m-0">
                    <li class="active">
                        <a href="<%=request.getContextPath()%>/list" class="nav-link">Dashboard</a>
                    </li>
                </ul>
            </div>

            <!-------sidebar--design- close----------->



            <!-------page-content start----------->

            <div id="content">

                <!------top-navbar-start----------->

                <div class="top-navbar">
                    <div class="xd-topbar">
                        <div class="row">
                            <div class="col-2 col-md-1 col-lg-1 order-2 order-md-1 align-self-center">
                                <div class="xp-menubar">
                                    <span class="material-icons text-white">signal_cellular_alt</span>
                                </div>
                            </div>

                            <div class="col-md-5 col-lg-3 order-3 order-md-2">
                                <div class="xp-searchbar">
                                    <form>
                                        <div class="input-group">
                                            <input type="search" class="form-control" placeholder="Search">
                                            <div class="input-group-append">
                                                <button class="btn" type="submit" id="button-addon2">Search
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>


                            <div class="col-10 col-md-6 col-lg-8 order-1 order-md-3">
                                <div class="xp-profilebar text-right">
                                    <nav class="navbar p-0">
                                        <ul class="nav navbar-nav flex-row ml-auto">
                                            <li class="dropdown nav-item">
                                                <a class="nav-link" href="#" data-toggle="dropdown">
                                                    <img src="img/user.jpg" style="width:40px; border-radius:50%;" />
                                                    <span class="xp-user-live"></span>
                                                </a>
                                                <ul class="dropdown-menu small-menu">
                                                    <li><a href="#">
                                                            <span class="material-icons">person_outline</span>
                                                            Profile
                                                        </a></li>

                                                    <li><a href="login.jsp">
                                                            <span class="material-icons">logout</span>
                                                            Logout
                                                        </a></li>
                                                </ul>
                                            </li>


                                        </ul>
                                    </nav>
                                </div>
                            </div>

                        </div>

                        <div class="xp-breadcrumbbar text-center">
                            <h4 class="page-title">Dashboard</h4>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Admin</a></li>
                                <li class="breadcrumb-item active" aria-curent="page">Dashboard</li>
                            </ol>
                        </div>


                    </div>
                </div>
                <!------top-navbar-end----------->


                <!------main-content-start----------->

                <div class="main-content">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-wrapper">
                                <form action="admin" method="post">

                                    <div class="table-title">
                                        <div class="row">
                                            <div class="col-sm-6 p-0 flex justify-content-lg-start justify-content-center">
                                                <h2 class="ml-lg-2">Manage Employees</h2>
                                            </div>
                                            <div class="col-sm-6 p-0 flex justify-content-lg-end justify-content-center">
                                                <a href="<%=request.getContextPath()%>/new" class="btn btn-success" data-toggle="modal">
                                                    <i class="material-icons">&#xE147;</i>
                                                    <span>Add New Employees</span>
                                                </a>                                          
                                            </div>
                                        </div>
                                    </div>

                                    <table class="table table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th><span class="custom-checkbox">
                                                        <input type="checkbox" id="selectAll">
                                                        <label for="selectAll"></label></th>
                                                <th>ID</th>
                                                <th>Họ Và Tên</th>
                                                <th>Địa Chỉ</th>
                                                <th>Số Điện Thoại</th>
                                                <th>Email</th>
                                                <th>Username</th>
                                                <th>Password</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <th><span class="custom-checkbox">
                                                        <input type="checkbox" id="checkbox1" name="option[]" value="1">
                                                        <label for="checkbox1"></label></th>
                                                        <c:forEach var="user" items="${listUser}">


                                                    <th>
                                                        <c:out value="${user.id}" />
                                                    </th>
                                                    <th>
                                                        <c:out value="${user.name}" />
                                                    </th>
                                                    <th>
                                                        <c:out value="${user.address}" />
                                                    </th>
                                                    <th>
                                                        <c:out value="${user.phone}" />
                                                    </th>
                                                    <th>
                                                        <c:out value="${user.email}" />
                                                    </th>
                                                    <th>
                                                        <c:out value="${user.username}" />
                                                    </th>

                                                    <th>
                                                        <c:out value="${user.password}" />
                                                    </th>
                                                    <th>
                                                        <a href="edit?id=<c:out value='${user.id}' />" class="edit" data-toggle="modal">
                                                            <i class="material-icons" data-toggle="tooltip"
                                                               title="Edit">&#xE254;</i>
                                                        </a>
                                                        <a href="delete?id=<c:out value='${user.id}' />" class="delete" data-toggle="modal">
                                                            <i class="material-icons" data-toggle="tooltip"
                                                               title="Delete">&#xE872;</i>
                                                        </a>
                                                    </th>
                                                </c:forEach>
                                            </tr>


                                            <tr>
                                                <th><span class="custom-checkbox">
                                                        <input type="checkbox" id="checkbox2" name="option[]" value="1">
                                                        <label for="checkbox2"></label></th>
                                                <th>1</th>
                                                <th>Nguyễn Thị Trà My</th>
                                                <th>90r parkdground poland Usa.</th>
                                                <th>(78-582552-9)</th>
                                                <th>nguyentramy.se@gmail.com</th>
                                                <th>admin</th>
                                                <th>1234</th>
                                                <th>
                                                    <a href="#editEmployeeModal" class="edit" data-toggle="modal">
                                                        <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
                                                    </a>
                                                    <a href="#deleteEmployeeModal" class="delete" data-toggle="modal">
                                                        <i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>
                                                    </a>
                                                </th>
                                            </tr>
                                        </tbody>


                                    </table>
                                </form>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-end">
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                                        </li>
                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">Next</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>









                        </div>
                    </div>

                    <c:if test="${user != null}">
                        <form action="update" method="post">
                        </c:if>
                        <c:if test="${user == null}">
                            <form action="insert" method="post">
                            </c:if>
                            <!----add-modal start--------->
                            <div class="modal fade" tabindex="-1" id="addEmployeeModal" role="dialog">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title"><c:if test="${user == null}">
                                                    Add New Employee
                                                </c:if></h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <c:if test="${user != null}">
                                                <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                                            </c:if>
                                            <div class="form-group">
                                                <label>Họ Và Tên</label>
                                                <input value="<c:out value='${user.name}' />" name="name" type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Địa chỉ</label>
                                                <input value="<c:out value='${user.address}' />" name="address" type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Số Điện Thoại</label>
                                                <input value="<c:out value='${user.phone}' />" name="phone" type="number" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Email</label>
                                                <input value="<c:out value='${user.emai}' />" name="email" type="email" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Username</label>
                                                <input value="<c:out value='${user.username}' />" name="username" type="text" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                            <button type="submit" class="btn btn-success">Add</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!----edit-modal end--------->





                            <!----edit-modal start--------->
                            <div class="modal fade" tabindex="-1" id="editEmployeeModal" role="dialog">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">
                                                <c:if test="${user != null}">
                                                    Edit Employees
                                                </c:if>
                                            </h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <c:if test="${user != null}">
                                                <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                                            </c:if>
                                            <div class="form-group">
                                                <label>Họ Và Tên</label>
                                                <input value="<c:out value='${user.name}' />" name="name" type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Địa chỉ</label>
                                                <input value="<c:out value='${user.address}' />" name="address" type="text" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Số Điện Thoại</label>
                                                <input value="<c:out value='${user.phone}' />" name="phone" type="number" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Email</label>
                                                <input value="<c:out value='${user.emai}' />" name="email" type="email" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Username</label>
                                                <input value="<c:out value='${user.username}' />" name="username" type="text" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                            <button type="button" class="btn btn-success">Save</button>
                                        </div>
                                    </div>
                                </div>  
                            </div>

                            <!----edit-modal end--------->


                            <!----delete-modal start--------->
                            <div class="modal fade" tabindex="-1" id="deleteEmployeeModal" role="dialog">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Delete Employees</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <p>Are you sure you want to delete this Records</p>
                                            <p class="text-warning"><small>this action Cannot be Undone,</small></p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                            <button type="button" class="btn btn-success">Delete</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!----edit-modal end--------->




                            </div>
                            </div>

                            <!------main-content-end----------->



                            <!----footer-design------------->

                            </div>




                            <!-------complete html----------->






                            <!-- Optional JavaScript -->
                            <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                            <script src="js/jquery-3.3.1.slim.min.js"></script>
                            <script src="js/popper.min.js"></script>
                            <script src="js/bootstrap.min.js"></script>
                            <script src="js/jquery-3.3.1.min.js"></script>


                            <script type="text/javascript">
                                $(document).ready(function () {
                                    $(".xp-menubar").on('click', function () {
                                        $("#sidebar").toggleClass('active');
                                        $("#content").toggleClass('active');
                                    });

                                    $('.xp-menubar,.body-overlay').on('click', function () {
                                        $("#sidebar,.body-overlay").toggleClass('show-nav');
                                    });

                                });

                            </script>





                            </body>

                            </html>