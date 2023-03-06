/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Category;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class CategoryDao extends DBContext{
    
    public List<Category> getAll(){
        List<Category> list  = new ArrayList<>();
        
        String sql = "SELECT * FROM Category";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Category c = new Category();
                c.setCategory_id(rs.getInt("CategoryID"));
                c.setCategory_name(rs.getString("CategoryName"));
                c.setDescr(rs.getString("Descr"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    //insert category
    public void insertCategory(Category c){
        String sql = "INSERT INTO [dbo].[Category]\n" +
"           ([CategoryID]\n" +
"           ,[CategoryName]\n" +
"           ,[Descr])\n" +
"     VALUES(?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, c.getCategory_id());
            st.setString(2, c.getCategory_name());
            st.setString(3, c.getDescr());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    //delete category
    public void deleteCategory(int id){
        String sql =  "DELETE FROM [dbo].[Category]\n" +
"      WHERE CategoryID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        
    }
    //update category
    public void updateCategory(Category c){
        String sql = "UPDATE [dbo].[Category]\n" +
"   SET [CategoryID] = ?" +
"      ,[CategoryName] = ?" +
"      ,[Descr] = ?" +
" WHERE CategoryID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(3, c.getCategory_name());
            st.setString(2, c.getDescr());
            st.setInt(3, c.getCategory_id());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public static void main(String[] args) {
        CategoryDao cdb = new CategoryDao();
        List<Category> listc = cdb.getAll();
        
        for (Category category : listc) {
            System.out.println(category.toString());
        }
    }
}
