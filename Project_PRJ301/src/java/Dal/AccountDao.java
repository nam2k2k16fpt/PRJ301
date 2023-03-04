package Dal;

import Model.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
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
                Account a = new Account(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getBoolean(4));
                return a;
            }

        } catch (SQLException e) {
        }
        return null;
    }

    public static void main(String[] args) {
        AccountDao a = new AccountDao();
        List<Account> list = a.getAll();
        for (Account account : list) {
            System.out.println(account.toString());
        }
    }

}
