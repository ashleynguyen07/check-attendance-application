<%-- 
    Document   : user-top-navbar
    Created on : Jul 8, 2023, 12:19:00 PM
    Author     : tramy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Start XP Col -->
    <div class="xp-profilebar text-right bg-light">
        <nav class="navbar p-0" style="background-color: rgba(247, 211, 211, 0.76);">
            <ul class="nav navbar-nav flex-row ml-auto float-right">
                <li class="nav-item dropdown">
                    <a class="nav-link" href="#" data-toggle="dropdown">
                        <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-person-fill"
                             viewBox="0 0 16 16" style="color: black;">
                            <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z" />
                        </svg>
                        <span class="xp-user-live"></span>
                    </a>
                    <ul class="dropdown-menu small-menu" style="position: absolute;will-change: transform;top: 0px;left: 0px;transform: translate3d(-100px, 58px, 0px);">
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
<!-- End XP Col -->
