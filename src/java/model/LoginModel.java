/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author tramy
 */
public class LoginModel {

    private int id;
    private String username;
    private String password;
    private int role;
    private String fullName;
    private String place;
    private int phoneNumber;

    public LoginModel() {
    }

    public LoginModel(String username, String password, int role, String fullName) {
        this.username = username;
        this.password = password;
        this.role = role;
        this.fullName = fullName;
    }

    public LoginModel(int id, String fullName, String place, int phoneNumber) {
        this.id = id;
        this.fullName = fullName;
        this.place = place;
        this.phoneNumber = phoneNumber;
    }


    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public LoginModel(String username, String password, int role, String fullName, String place, int phoneNumber) {
        this.username = username;
        this.password = password;
        this.role = role;
        this.fullName = fullName;
        this.place = place;
        this.phoneNumber = phoneNumber;
    }
    

    public String getTenSach() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
