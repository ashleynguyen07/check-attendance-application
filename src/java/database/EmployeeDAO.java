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

    private static final String INSERT_USERS_SQL = "INSERT INTO [dbo].[NHANVIEN]" + " VALUES " + " (?, ?, ?,?, ?, ?,?);";
    private static final String SELECT_USER_BY_ID = "select * from [dbo].[NHANVIEN] where Id_NhanVien =?";
    private static final String SELECT_ALL_USERS = "select * from [dbo].[NHANVIEN]";
    private static final String DELETE_USERS_SQL = "delete from [dbo].[NHANVIEN] where Id_NhanVien = ?;";
    private static final String UPDATE_USERS_SQL = "UPDATE [dbo].[NHANVIEN]  SET  HovaTen=?,Email=?, DiaChi=?,SDT=?, Username=?, Role=? WHERE Id_NhanVien=?";

    public void insertUser(String name, String email, String address, String phone, String username, String password, String role) throws SQLException {
        try ( Connection connection = getConnection();  PreparedStatement st = connection.prepareStatement(INSERT_USERS_SQL);) {
            st.setString(1, name);
            st.setString(2, email);
            st.setString(3, address);
            st.setString(4, phone);
            st.setString(5, username);
            st.setString(6, password);
            st.setString(7, role);

            st.executeUpdate(); // không trả dữ liệu thì dùng executeUpdate
        } catch (Exception e) {
            System.out.println("loi" + e + "loi");
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
                        rs.getString(7),
                        rs.getInt(8)
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
            ResultSet rs = st.executeQuery(); // trả về dữ liệu thì dùng executeQuery

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                users.add(new EmployeeModel(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)
                ));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }

    public void deleteUser(String id) throws SQLException {
        try ( Connection connection = getConnection();  PreparedStatement st = connection.prepareStatement(DELETE_USERS_SQL);) {
            st.setString(1, id);
            st.executeUpdate(); // không trả dữ liệu thì dùng executeUpdate
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean updateUser(EmployeeModel t) throws SQLException {
        boolean rowUpdated;
        try ( Connection connection = getConnection();  PreparedStatement st = connection.prepareStatement(UPDATE_USERS_SQL);) {
            st.setString(1, t.getHoVaTen());
            st.setString(2, t.getDiaChi());
            st.setString(3, t.getSdt());
            st.setString(4, t.getEmail());
            st.setString(5, t.getUsername());
            st.setInt(6, t.getRole());
            st.setInt(7, t.getId_NhanVien());

            rowUpdated = st.executeUpdate() > 0;
        }
        return rowUpdated;
    }
    
    public EmployeeModel getEmployeeByID(String id) {
        try ( Connection connection = getConnection(); // Step 2:Create a statement using connection object
                  PreparedStatement st = connection.prepareStatement(SELECT_USER_BY_ID);) {
            st.setString(1, id);

            System.out.println(st);
            // Step 3: Execute the query or update query
            ResultSet rs = st.executeQuery(); // trả về dữ liệu thì dùng executeQuery

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                return new EmployeeModel(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)
                );
            }
        } catch (SQLException e) {
            System.out.println("loi" + e + "loi");
        }
        return null;
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
