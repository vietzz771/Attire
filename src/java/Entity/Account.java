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

    private int id;
    private String user;
    private String pass;
    private String name;
    private String phone;
    private int isAdmin;

    public Account() {
    }

    public Account(int id, String user, String pass, String name, String phone, int isAdmin) {
        this.id = id;
        this.user = user;
        this.pass = pass;
        this.name = name;
        this.phone = phone;
        this.isAdmin = isAdmin;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", user=" + user + ", pass=" + pass + ", name=" + name + ", phone=" + phone + ", isAdmin=" + isAdmin + '}';
    }
    
    
}
