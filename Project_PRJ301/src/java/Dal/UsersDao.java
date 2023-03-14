/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Model.Users;

/**
 *
 * @author Admin
 */
public class UsersDao extends DBContext{
    //getAll
    public List<Users> getAll(){
        List<Users> list = new ArrayList<>();
        String sql = "SELECT[User_id]\n" +
"      ,[Displayname]\n" +
"      ,[FullName]\n" +
"      ,[Address]\n" +
"      ,[Email]\n" +
"      ,[Phone]\n" +
"      ,[Role]\n" +
"      ,[Admin_userid]\n" +
"  FROM [Assgin_PRJ301].[dbo].[Users]";
        
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Users u = new Users();
                 u.setUser_id(rs.getInt("User_id"));
                 u.setDisplayname(rs.getString("Displayname"));
                 u.setFullname(rs.getString("FullName"));
                 u.setAddress(rs.getString("Address"));
                 u.setPhone(rs.getString("Phone"));
                 u.setEmail(rs.getString("Email"));
                 u.setRole(rs.getString("Role"));
                 u.setManager_user(rs.getInt("Admin_userid"));
                list.add(u);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    

    
    
}
