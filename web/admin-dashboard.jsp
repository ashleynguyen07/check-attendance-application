<!-- 
    Document   : admin-dashboard
    Created on : Jul 5, 2023, 8:36:18 AM
    Author     : tramy
-->


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
        <title>Admin dashboard</title>
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
            <%@include file="includes/admin-dashboard-sidebar.jsp" %>
            <div id="content">    
                <div class="top-navbar">
                    <%@include file="includes/admin-dashboard-top-navbar.jsp" %>
                </div>
                <!--------main-content------------->
                <div class="main-content">
                    <!-- data table -->
                    <%@include file="includes/admin-dashboard-data-table.jsp" %>
                    <!-- add model -->
                    <%@include file="includes/admin-dashboard-add-model.jsp" %>
                    <!-- edit model -->
                    <%@include file="includes/admin-dashboard-edit-model.jsp" %>
                    <!-- delete model -->
                    <%@include file="includes/admin-dashboard-delete-model.jsp" %>

                </div>
            </div>



            <!--  JavaScript -->
            <!-- jQuery first, then Popper.js, then Bootstrap JS -->
            <script src="js/jquery-3.3.1.slim.min.js"></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery-3.3.1.min.js"></script>


            <script type="text/javascript">
                

                $(document).ready(function () {
                    $(".xp-menubar").on('click', function () {
                        $('#sidebar').toggleClass('active');
                        $('#content').toggleClass('active');
                    });

                    $(".xp-menubar,.body-overlay").on('click', function () {
                        $('#sidebar,.body-overlay').toggleClass('show-nav');
                    });

                    // Filter table rows based on searched term
                    $("#search").on("keyup", function () {
                        var term = $(this).val().toLowerCase();
                        $("table tbody tr").each(function () {
                            $row = $(this);
                            var name = $row.find("td:nth-child(2)").text().toLowerCase();
                            console.log(name);
                            if (name.search(term) < 0) {
                                $row.hide();
                            } else {
                                $row.show();
                            }
                        });
                    });
                    $('#data-table').DataTable();
                    $('.dataTables_length').addClass('bs-select');

                });


            </script>

    </body>
</html>
