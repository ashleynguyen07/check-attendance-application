<%-- 
    Document   : admin-dashboard-top-navbar
    Created on : Jul 5, 2023, 8:43:24 AM
    Author     : tramy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="xp-topbar">

    <!-- Start XP Row -->
    <div class="row">
        <!-- Start XP Col -->
        <div class="col-2 col-md-1 col-lg-1 order-2 order-md-1 align-self-center">
            <div class="xp-menubar">
                <span class="material-icons text-white">signal_cellular_alt
                </span>
            </div>
        </div>
        <!-- End XP Col -->

        <!-- Start XP Col -->
        <div class="col-md-5 col-lg-3 order-3 order-md-2">
            <div class="xp-searchbar">
                <div class="search-box" style="padding-top: 5px;">
                    <div class="input-group">
                        <input type="text" id="search" class="form-control"
                               placeholder="Search by Name">
                            <span class="input-group-addon"><i class="material-icons">&#xE8B6;</i></span>
                    </div>
                </div>
            </div>
        </div>
        <!-- End XP Col -->

        <!-- Start XP Col -->
        <div class="col-10 col-md-6 col-lg-8 order-1 order-md-3">
            <div class="xp-profilebar text-right">
                <nav class="navbar p-0">
                    <ul class="nav navbar-nav flex-row ml-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link" href="#" data-toggle="dropdown">
                                <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-person-fill"
                                     viewBox="0 0 16 16" style="color: black;">
                                    <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z" />
                                </svg>                                
                                <span class="xp-user-live"></span>
                            </a>
                            <ul class="dropdown-menu small-menu">
                                <li>
                                    <a href="#">
                                        <span class="material-icons">
                                            person_outline
                                        </span>Profile

                                    </a>
                                </li>
                                <li>
                                    <a href="user?action=logout"><span class="material-icons">
                                            logout</span>Logout</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- End XP Col -->
    </div>
    <div class="xp-breadcrumbbar text-center">
        <h3 class="page-title">DASHBOARD</h3>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a>Admin</a></li>
            <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
        </ol>
    </div>
</div>
