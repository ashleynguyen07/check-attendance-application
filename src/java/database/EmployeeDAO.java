/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;

import static database.JDBCUtil.getConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.EmployeeModel;

/**
 *
 * @author tramy
 */
public class EmployeeDAO {

    private static final String INSERT_USERS_SQL = "INSERT INTO [dbo].[NHANVIEN]" + "  (HoVaTen, DiaChi, SDT, Email, Username, Password) VALUES "
            + " (?, ?, ?, ?, ?, ?);";

    private static final String SELECT_USER_BY_ID = "select * from [dbo].[NHANVIEN] where Id_NhanVien =?";
    private static final String SELECT_ALL_USERS = "select * from [dbo].[NHANVIEN]";
    private static final String DELETE_USERS_SQL = "delete from [dbo].[NHANVIEN] where Id_NhanVien = ?;";
    private static final String UPDATE_USERS_SQL = "UPDATE [dbo].[NHANVIEN]  SET  HovaTen=?, DiaChir=?,SDT=?,Email=?, Username=? WHERE Id_NhanVien=?";

    public void insertUser(EmployeeModel t) throws SQLException {
        System.out.println(INSERT_USERS_SQL);
        // try-with-resource statement will auto close the connection.
        try ( Connection connection = getConnection();  PreparedStatement st = connection.prepareStatement(INSERT_USERS_SQL)) {
            st.setString(1, t.getHoVaTen());
            st.setString(2, t.getDiaChi());
            st.setString(3, t.getSDT());
            st.setString(4, t.getEmail());
            st.setString(5, t.getUsername());
            st.setString(6, t.getPassword());
            System.out.println(st);
            st.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public EmployeeModel selectUser(int id) {
        EmployeeModel user = null;
        // Step 1: Establishing a Connection
        try ( Connection connection = getConnection(); // Step 2:Create a statement using connection object
                  PreparedStatement st = connection.prepareStatement(SELECT_USER_BY_ID);) {
            st.setInt(1, id);
            System.out.println(st);
            // Step 3: Execute the query or update query
            ResultSet rs = st.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                user = new EmployeeModel(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)
            
         );
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

    public List< EmployeeModel> selectAllUsers() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List< EmployeeModel> users = new ArrayList<>();
        // Step 1: Establishing a Connection
        try ( Connection connection = getConnection(); // Step 2:Create a statement using connection object
                  PreparedStatement st = connection.prepareStatement(SELECT_ALL_USERS);) {
            System.out.println(st);
            // Step 3: Execute the query or update query
            ResultSet rs = st.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                users.add(new EmployeeModel(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }

    public boolean deleteUser(int id) throws SQLException {
        boolean rowDeleted;
        try ( Connection connection = getConnection();  PreparedStatement st = connection.prepareStatement(DELETE_USERS_SQL);) {
            st.setInt(1, id);
            rowDeleted = st.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateUser(EmployeeModel t) throws SQLException {
        boolean rowUpdated;
        try ( Connection connection = getConnection();  PreparedStatement st = connection.prepareStatement(UPDATE_USERS_SQL);) {
            st.setString(1, t.getHoVaTen());
            st.setString(2, t.getDiaChi());
            st.setString(3, t.getSDT());
            st.setString(4, t.getEmail());
            st.setString(5, t.getUsername());
            st.setInt(6, t.getId_NhanVien());

            rowUpdated = st.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

}
