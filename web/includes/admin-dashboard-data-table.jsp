<%-- 
    Document   : admin-dashboard-data-table
    Created on : Jul 5, 2023, 8:58:19 AM
    Author     : tramy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-md-12">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6 p-0 d-flex justify-content-lg-start justify-content-center">
                    <h2 class="ml-lg-2">Manage Employees</h2>
                </div>
                <div class="col-sm-6 p-0 d-flex justify-content-lg-end justify-content-center">
                    <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal">
                        <i class="material-icons">&#xE147;</i> <span>Add New Employee</span></a>
                    <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal">
                        <i class="material-icons">&#xE15C;</i> <span>Delete</span></a>
                </div>
            </div>
        </div>
        <table id="data-table" class="table table-striped table-hover">
            <thead>
                <tr>
                    <th>
                        <span class="custom-checkbox">
                            <input type="checkbox" id="selectAll">
                            <label for="selectAll"></label>
                        </span>
                    </th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Phone</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>                                   
                <tr>
                    <td>
                        <span class="custom-checkbox">
                            <input type="checkbox" id="checkbox4" name="options[]" value="1">
                            <label for="checkbox4"></label>
                        </span>
                    </td>
                    <td>Fran Wilson</td>
                    <td>franwilson@mail.com</td>
                    <td>C/ Araquil, 67, Madrid, Spain</td>
                    <td>(204) 619-5731</td>
                    <td>
                        <a href="#editEmployeeModal" class="edit" data-toggle="modal">
                            <i class="material-icons" data-toggle="tooltip"
                               title="Edit">&#xE254;</i></a>
                        <a href="#deleteEmployeeModal" class="delete" data-toggle="modal">
                            <i class="material-icons" data-toggle="tooltip"
                               title="Delete">&#xE872;</i></a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="custom-checkbox">
                            <input type="checkbox" id="checkbox5" name="options[]" value="1">
                            <label for="checkbox5"></label>
                        </span>
                    </td>
                    <td>Martin Blank</td>
                    <td>martinblank@mail.com</td>
                    <td>Via Monte Bianco 34, Turin, Italy</td>
                    <td>(480) 631-2097</td>
                    <td>
                        <a href="#editEmployeeModal" class="edit" data-toggle="modal">
                            <i class="material-icons" data-toggle="tooltip"
                               title="Edit">&#xE254;</i></a>
                        <a href="#deleteEmployeeModal" class="delete" data-toggle="modal">
                            <i class="material-icons" data-toggle="tooltip"
                               title="Delete">&#xE872;</i></a>
                    </td>
                </tr>
            </tbody>
        </table>
        <div class="clearfix">
            <ul class="pagination"></ul>
        </div>
    </div>
</div>
