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
    private String DiaChi;
    private String SDT;
    private String Username;
    private String Password;
    private String Email;

    public EmployeeModel(int Id_NhanVien, String HoVaTen, String DiaChi, String SDT, String Email, String Username, String Password) {
        this.Id_NhanVien = Id_NhanVien;
        this.HoVaTen = HoVaTen;
        this.DiaChi = DiaChi;
        this.SDT = SDT;
        this.Email = Email;
        this.Username = Username;
        this.Password = Password;
    }

    public EmployeeModel(int Id_NhanVien, String HoVaTen, String DiaChi, String SDT, String Username, String Email) {
        this.Id_NhanVien = Id_NhanVien;
        this.HoVaTen = HoVaTen;
        this.DiaChi = DiaChi;
        this.SDT = SDT;
        this.Username = Username;
        this.Email = Email;
    }

    public EmployeeModel(String HoVaTen, String DiaChi, String SDT, String Username, String Password, String Email) {
        this.HoVaTen = HoVaTen;
        this.DiaChi = DiaChi;
        this.SDT = SDT;
        this.Username = Username;
        this.Password = Password;
        this.Email = Email;
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

}
