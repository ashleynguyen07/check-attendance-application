<%-- 
    Document   : admin-dashboard-edit-model
    Created on : Jul 5, 2023, 9:04:25 AM
    Author     : tramy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Edit Modal HTML -->
<div id="editEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="update" method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Edit Employee</h4>
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">                   
                    <div class="form-group">
                        <label>Name</label>
                        <input value="${em.hoVaTen}" name="name" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input value="${em.email}" name="email" type="email" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Address</label>
                        <textarea value="${em.diaChi}" name="address" class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Phone</label>
                        <input value="${em.sdt}" name="phone" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Username</label>
                        <input value="${em.username}" name="username" type="text" class="form-control" required>
                    </div>                    
                    <div class="form-group">
                        <label>Role</label><br>
                        <select class="form-select" aria-label="Default select example" name="role" style="width: 100%"required>
                            <option selected>Choose...</option>
                            <option value="1" ${em.role == 1?"checked":""}>Employee</option>
                            <option value="2" ${em.role == 2?"checked":""}>Manager</option>
                        </select>                   
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal"
                           value="Cancel">
                    <input type="submit" class="btn btn-info" value="Save">
                </div>
            </form>
        </div>
    </div>
</div>
