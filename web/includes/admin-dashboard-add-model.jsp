<%-- 
    Document   : admin-dashboard-add-model
    Created on : Jul 5, 2023, 9:02:16 AM
    Author     : tramy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Add Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="add" method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Add Employee</h4>
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Name</label>
                            <input name="name" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input name="email" type="email" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <textarea name="diaChi" class="form-control" required></textarea>
                        </div>
                        <div class="form-group">
                            <label>Phone</label>
                            <input name="phone" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Username</label>
                            <input name="username" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input name="password" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Role</label><br>
                            <select class="form-select" aria-label="Default select example" name="role" style="width: 100%"required>
                                <option selected>Choose...</option>
                                <option value=1>Employee</option>
                                <option value=2>Manager</option>
                            </select>                   
                        </div>
                    </div>

                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal"
                               value="Cancel">
                        <input type="submit" class="btn btn-success" value="Add">
                    </div>
                </form>
        </div>
    </div>
</div>
