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
public class UserDAO {

    /**
     * @param args the command line arguments
     */
    public String getFullNameFromUsername(String username) throws SQLException  {
        String fullName = "";
        String sql = "SELECT * FROM [EmployeeManagement].[dbo].[NHANVIEN] WHERE Username=?";
        try {
            Connection conn = new JDBCUtil().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                fullName = rs.getString("HoVaTen");
                return fullName;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
