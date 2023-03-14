/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Admin
 */
public class Account {
    private int id;
    private String username;
    private String password;
    private boolean status;
    private int user_id;
    Users u;

    public Account(int id, String username, String password, boolean status, int user_id, Users u) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.status = status;
        this.user_id = user_id;
        this.u = u;
    }

    public Users getU() {
        return u;
    }

    public void setU(Users u) {
        this.u = u;
    }
    
    

    public Account(int id, String username, String password, boolean status, int user_id) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.status = status;
        this.user_id = user_id;
    }

    public Account() {
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

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", username=" + username + ", password=" + password + ", status=" + status + ", user_id=" + user_id + '}';
    }

   
    
    
            
}
