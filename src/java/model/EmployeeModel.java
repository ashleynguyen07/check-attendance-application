/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package model;

/**
 *
 * @author tramy
 */
public class EmployeeModel {

    private int id_NhanVien;
    private String hoVaTen;
    private String email;
    private String diaChi;
    private String sdt;
    private String username;
    private String password;
    private int role;

    
    //selectAllUser
    public EmployeeModel(int id_NhanVien, String hoVaTen, String email, String diaChi, String sdt, String username, String password, int role) {
        this.id_NhanVien = id_NhanVien;
        this.hoVaTen = hoVaTen;
        this.email = email;
        this.diaChi = diaChi;
        this.sdt = sdt;
        this.username = username;
        this.password = password;
        this.role = role;
    }

    //updateUser

    public EmployeeModel(int id_NhanVien, String hoVaTen, String email, String diaChi, String sdt, String username, int role) {
        this.id_NhanVien = id_NhanVien;
        this.hoVaTen = hoVaTen;
        this.email = email;
        this.diaChi = diaChi;
        this.sdt = sdt;
        this.username = username;
        this.role = role;
    }
    

    public int getId_NhanVien() {
        return id_NhanVien;
    }

    public void setId_NhanVien(int id_NhanVien) {
        this.id_NhanVien = id_NhanVien;
    }

    public String getHoVaTen() {
        return hoVaTen;
    }

    public void setHoVaTen(String hoVaTen) {
        this.hoVaTen = hoVaTen;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
    
    
    

    

    
    
    

}
