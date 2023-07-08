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

    private int Id_NhanVien;
    private String HoVaTen;
    private String Email;
    private String DiaChi;
    private String SDT;
    private String Username;
    private String Password;
    private int Role;

    
    //selectAllUser
    public EmployeeModel(int Id_NhanVien, String HoVaTen, String Email, String DiaChi, String SDT, String Username, String Password, int Role) {
        this.Id_NhanVien = Id_NhanVien;
        this.HoVaTen = HoVaTen;
        this.Email = Email;
        this.DiaChi = DiaChi;
        this.SDT = SDT;
        this.Username = Username;
        this.Password = Password;
        this.Role = Role;
    }

    //updateUser

    public EmployeeModel(int Id_NhanVien, String HoVaTen, String Email, String DiaChi, String SDT, String Username, int Role) {
        this.Id_NhanVien = Id_NhanVien;
        this.HoVaTen = HoVaTen;
        this.Email = Email;
        this.DiaChi = DiaChi;
        this.SDT = SDT;
        this.Username = Username;
        this.Role = Role;
    }
    
    
    

    public int getRole() {
        return Role;
    }

    public void setRole(int Role) {
        this.Role = Role;
    }
    

    public int getId_NhanVien() {
        return Id_NhanVien;
    }

    public void setId_NhanVien(int Id_NhanVien) {
        this.Id_NhanVien = Id_NhanVien;
    }

    public String getHoVaTen() {
        return HoVaTen;
    }

    public void setHoVaTen(String HoVaTen) {
        this.HoVaTen = HoVaTen;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    public String getSDT() {
        return SDT;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    @Override
    public String toString() {
        return "EmployeeModel{" + "Id_NhanVien=" + Id_NhanVien + ", HoVaTen=" + HoVaTen + ", DiaChi=" + DiaChi + ", SDT=" + SDT + ", Username=" + Username + ", Password=" + Password + ", Email=" + Email + ", Role=" + Role + '}';
    }

    
    
    

}
