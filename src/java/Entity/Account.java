/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author Hades
 */
public class Account {
    
    private int account_id;
    private String user;
    private String password;
    private String full_name;
    private String phone;
    private String email;
    private String address;
    private String role;

    public Account() {
    }

    

    public Account(int account_id, String user, String password, String full_name, String phone, String email, String address, String role) {
        this.account_id = account_id;
        this.user = user;
        this.password = password;
        this.full_name = full_name;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.role = role;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Account{" + "account_id=" + account_id + ", user=" + user + ", password=" + password + ", full_name=" + full_name + ", phone=" + phone + ", email=" + email + ", address=" + address + ", role=" + role + '}';
    }

   
}
