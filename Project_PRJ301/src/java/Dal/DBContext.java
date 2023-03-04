
package Dal;

import java.sql.Connection;
//Interface cc cac ham cho thao tac db.
import java.sql.DriverManager;
// class quan ly ds database driver. va tao ket noi tuong ung toi db
import java.sql.SQLException;
//xu ly cac loi trong db

//tao 1 ket noi voi co so du lieu
public class DBContext {
    protected Connection connection;
    public DBContext()
    {
        try {
            // Edit URL , username, password to authenticate with your MS SQL Server
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Assgin_PRJ301";
            String username = "namnh";
            String password = "123456789";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex);
        }
    }
}
