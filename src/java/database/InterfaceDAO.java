/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package database;

import java.util.ArrayList;
import model.LoginModel;

/**
 *
 * @author tramy
 */
public interface InterfaceDAO {
	
	public int insert(LoginModel t);
	
	public int update(LoginModel t);
	
	public int delete(LoginModel t);
	
	public ArrayList selectAll();
	
	public LoginModel selectById(LoginModel t);
	
	public ArrayList selectByCondition(String condition);
	
}
