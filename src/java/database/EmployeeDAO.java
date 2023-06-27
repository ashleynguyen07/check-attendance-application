/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.LoginModel;

/**
 *
 * @author tramy
 */
public class EmployeeDAO {

    /**
     * @param args the command line arguments
     */
    public List<LoginModel> getAllEmployees() {
        List<LoginModel> employees = new ArrayList<>();
        // Query the database for all employees
        String sql = "SELECT * FROM [EmployeeManagement].[dbo].[NHANVIEN]";
        try {
            Connection conn = new JDBCUtil().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("Id_NhanVien");
                String name = rs.getString("HoVaTen");
                String place = rs.getString("DiaChi");
                int phoneNumber = rs.getInt("SDT");
                LoginModel employee = new LoginModel(id, name, place, phoneNumber);
                employees.add(employee);
                
                return employees;
            }
            rs.close();
           
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employees;
    }
}


