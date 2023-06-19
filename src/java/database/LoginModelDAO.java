/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import jdk.jfr.Category;
import model.LoginModel;

/**
 *
 * @author tramy
 */
public class LoginModelDAO {
    private ArrayList<LoginModel> data = new ArrayList<LoginModel>();
    
    public LoginModelDAO() {
        this.data = new ArrayList<LoginModel>();
    }
    
    private ArrayList<LoginModel> selectAll() {
        return data;
    }
     
}
   