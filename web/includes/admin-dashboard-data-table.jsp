<!--     Document   : admin-dashboard-data-table    Created on : Jul 5, 2023, 8:58:19 AM    Author     : tramy--><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%@page contentType="text/html" pageEncoding="UTF-8"%><div class="col-md-12">    <div class="table-wrapper">        <div class="table-title">            <div class="row">                <div class="col-sm-6 p-0 d-flex justify-content-lg-start justify-content-center">                    <h2 class="ml-lg-2">Manage Employees</h2>                </div>                <div class="col-sm-6 p-0 d-flex justify-content-lg-end justify-content-center">                    <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal">                        <i class="material-icons">&#xE147;</i> <span>Add New Employee</span></a>                    <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal">                        <i class="material-icons">&#xE15C;</i> <span>Delete</span></a>                </div>            </div>        </div>        <table id="data-table" class="table table-striped table-hover">            <thead>                <tr>                    <th>                    </th>                    <th><b>Name</b></th>                    <th><b>Email</b></th>                    <th><b>Address</b></th>                    <th><b>Phone</b></th>                    <th><b>Username</b></th>                    <th><b>Password</b></th>                    <th><b>Role</b></th>                    <th><b>Actions</b></th>                </tr>            </thead>            <tbody>                  <c:forEach items="${data}" var="x">                    <tr>                        <td>                            <span class="custom-checkbox">                                <input type="checkbox" id="checkbox4" name="options[]" value="1">                                <label for="checkbox4"></label>                            </span>                        </td>                        <td>${x.hoVaTen}</td>                        <td>${x.email}</td>                        <td>${x.diaChi}</td>                        <td>${x.sdt}</td>                        <td>${x.username}</td>                        <td>${x.password}</td>                        <td>                            <c:if test="${x.role == 1}">Manager</c:if>                            <c:if test="${x.role == 2}">Employee</c:if>                            </td>                            <td>                                <a href="update?employee_id=${x.id_NhanVien}" class="edit" data-toggle="modal" data-target="#editEmployeeModal">                                <i class="material-icons" data-toggle="tooltip"                                   title="Edit">&#xE254;</i></a>                            <a href="#deleteEmployeeModal" class="delete" data-toggle="modal">                                <i class="material-icons" data-toggle="tooltip"                                   title="Delete">&#xE872;</i></a>                        </td>                    </tr>                </c:forEach>             </tbody>        </table>           </div></div>