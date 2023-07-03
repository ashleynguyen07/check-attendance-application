<%-- 
    Document   : user-changeInfo
    Created on : Jun 27, 2023, 10:37:18 AM
    Author     : tramy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String baoLoi = request.getAttribute("baoLoi")+"";
        baoLoi = (baoLoi.equals("null"))?"THAY ĐỔI THÔNG TIN NHÂN VIÊN":baoLoi;
        
        
        String hoVaTen = user.getHoVaTen();
        String gioiTinh= khachHang.getGioiTinh();
        String ngaySinh =khachHang.getNgaySinh().toString();
        String diaChiKhachHang =khachHang.getDiaChi();
        String diaChiMuaHang=khachHang.getDiaChiMuaHang();
        String diaChiNhanHang= khachHang.getDiaChiNhanHang();
        String dienThoai=khachHang.getSoDienThoai();
        String email=khachHang.getEmail();
        
        
        %>
        <h3>THÔNG TIN NHÂN VIÊN</h3>
        <div class="col-md-6">
            <label for="hoVaTen" class="form-label">Họ và tên</label>
            <input type="text" class="form-control" id="hoVaTen" name="hoVaTen" value="<%=hoVaTen%>">
        </div>
        <div class="col-md-6">
            <label for="gioiTinh" class="form-label">Giới tính</label>
            <select class="form-control" id="gioiTinh" name="gioiTinh">
                <option value="Nam" <%= (gioiTinh=="Nam")?"select='selected'":""%>>Nam</option>
                <option value="Nữ"<%= (gioiTinh=="Nữ")?"select='selected'":""%>>Nữ</option>
            </select>
        </div>

        <div class="col-md-4">
            <label for="ngaySinh" class="form-label">Ngày sinh</label>
            <input type="date" class="form-control" id="ngaySinh" name="ngaySinh"value="<%=ngaySinh%>">
        </div>
        <div class="col-md-4">
            <label for="soDienThoai" class="form-label">Số điện thoại</label>
            <input type="tel" class="form-control" id="soDienThoai" name="soDienThoai"value="<%=dienThoai%>">
        </div>
        <div class="col-md-4">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" value="<%=email%>">


        </div>
    </body>
</html>
