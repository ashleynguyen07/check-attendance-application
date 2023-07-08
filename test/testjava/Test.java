package testjava;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */


import database.EmployeeDAO;
import java.util.List;
import model.EmployeeModel;

/**
 *
 * @author tramy
 */
public class Test {

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        EmployeeDAO dao = new EmployeeDAO();
        List<EmployeeModel> ls = dao.selectAllUsers();
        for(EmployeeModel o : ls) {
            System.out.println(o);
        }
        
    }
}
