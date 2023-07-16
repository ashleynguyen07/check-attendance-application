<%-- 
    Document   : admin-dashboard-delete-model
    Created on : Jul 5, 2023, 9:05:18 AM
    Author     : tramy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Delete Modal HTML -->
<div id="deleteEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title">Delete Employee</h4>
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Are you sure you want to delete these Records?</p>
                    <p class="text-warning"><small>This action cannot be undone.</small></p>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal"
                           value="Cancel">
                    <a href="delete?id_NhanVien=${x.id_NhanVien}"><input type="button" class="btn btn-danger" value="Delete"></a>
                </div>
            </form>
        </div>
    </div>
</div>

