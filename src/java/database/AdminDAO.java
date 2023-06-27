/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.LoginModel;

/**
 *
 * @author tramy
 */
public class AdminDAO {

    /**
     * @param username
     * @param password
     * @return
     */
    public LoginModel check(String username, String password) {
        String sql = "SELECT * FROM [EmployeeManagement].[dbo].[NHANVIEN] WHERE Username=? and Password=?";
        try {
            Connection conn = new JDBCUtil().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
                        
            if (rs.next()) {
                LoginModel a = new LoginModel(rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getInt("Role"),
                        rs.getString("HoVaTen"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
