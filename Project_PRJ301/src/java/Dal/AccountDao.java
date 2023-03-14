package Dal;

import Model.Account;
import Model.Users;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AccountDao extends DBContext {

    public List<Account> getAll() {
        List<Account> list = new ArrayList<>();

        String sql = "SELECT * FROM Account";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setId(rs.getInt("Id"));
                a.setUsername(rs.getString("Username"));
                a.setPassword(rs.getString("Password"));
                a.setStatus(rs.getBoolean("Status"));
                a.setUser_id(rs.getInt("User_id"));
                list.add(a);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Account checkLogin(String username, String pass) {
        String sql = "  SELECT * FROM Account Where Username = ? and Password = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getBoolean(4), rs.getInt(5));
                return a;
            }

        } catch (SQLException e) {
        }
        return null;
    }

    //check username exist
    public Account getByUsername(String username) {
        String sql = "SELECT * FROM Account a INNER JOIN Users u ON a.User_id = u.User_id Where a.Username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Users u = new Users(rs.getInt("User_id"), rs.getString("Displayname"), rs.getString("FullName"), rs.getString("Address"), rs.getString("Email"), rs.getString("Phone"), rs.getString("Role"), rs.getInt("Admin_userid"));

                Account a = new Account(rs.getInt("Id"), rs.getString("Username"), rs.getString("Password"), rs.getBoolean("Status"), rs.getInt("User_id"), u);
                return a;
            }
        } catch (SQLException e) {
        }
        return null;
    }

    //insert 
    public void insertAccount() {

    }

    //delete
    public void deleteAccount() {

    }

    //update
    public void updateAccount() {

    }

    public static void main(String[] args) {
        AccountDao a = new AccountDao();
        List<Account> list = a.getAll();
        for (Account account : list) {
            System.out.println(account.toString());
        }
    }

}
