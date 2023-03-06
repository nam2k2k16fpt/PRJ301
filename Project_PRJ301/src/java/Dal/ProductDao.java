
package Dal;

import Model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class ProductDao extends DBContext {

    //select getAll
    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM Product";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setProduct_id(rs.getString("Product_id"));
                p.setProduct_name(rs.getNString("Product_name"));
                p.setQuantify(rs.getInt("Quantity"));
                p.setUnit(rs.getString("Unit"));
                p.setStatus(rs.getString("Status"));
                p.setSupplier_id(rs.getString("Supplier_id"));
                p.setDescribe(rs.getString("Describe"));
                p.setPhoto(rs.getString("photo"));
                p.setPrice(rs.getFloat("Price"));
                p.setCreate_at(rs.getDate("Created_at"));
                p.setUpdated_at(rs.getDate("Updated_at"));
                p.setCategory_id(rs.getInt("CategoryID"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }

    //insert product
    public void Insertproduct(Product p) {
        String sql = "INSERT INTO [dbo].[Product]\n"
                + "           ([Product_id]\n"
                + "           ,[Product_name]\n"
                + "           ,[Quantity]\n"
                + "           ,[Unit]\n"
                + "           ,[Status]\n"
                + "           ,[Supplier_id]\n"
                + "           ,[Describe]\n"
                + "           ,[photo]\n"
                + "           ,[Price]\n"
                + "           ,[Created_at]\n"
                + "           ,[Updated_at]\n"
                + "           ,[CategoryID])\n"
                + "     VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, p.getProduct_id());
            st.setString(2, p.getProduct_name());
            st.setInt(3, p.getQuantify());
            st.setString(4, p.getUnit());
            st.setString(5, p.getStatus());
            st.setString(6, p.getSupplier_id());
            st.setString(7, p.getDescribe());
            st.setString(8, p.getPhoto());
            st.setFloat(9, p.getPrice());
            st.setDate(10, p.getCreate_at());
            st.setDate(11, p.getUpdated_at());
            st.setInt(12, p.getCategory_id());
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    //check id
    public Product getCheckIdProduct(String id) {

        return null;
    }

    //delete product following id
    public void deleteProduct(String id) {
        String sql = "DELETE FROM [dbo].[Product]\n"
                + "      WHERE Product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //update product
    public void updateProduct(Product p) {
        String sql = "UPDATE [dbo].[Product]\n"
                + "   SET [Product_name] = ?"
                + "      ,[Quantity] = ?"
                + "      ,[Unit] = ?"
                + "      ,[Status] = ?"
                + "      ,[Supplier_id] = ?"
                + "      ,[Describe] = ?"
                + "      ,[photo] = ?"
                + "      ,[Price] = ?"
                + "      ,[Created_at] = ?"
                + "      ,[Updated_at] = ?"
                + "      ,[CategoryID] = ?"
                + " WHERE Product_id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, p.getProduct_name());
            st.setInt(2, p.getQuantify());
            st.setString(3, p.getUnit());
            st.setString(4, p.getStatus());
            st.setString(5, p.getSupplier_id());
            st.setString(6, p.getDescribe());
            st.setString(7, p.getPhoto());
            st.setFloat(8, p.getPrice());
            st.setDate(9, p.getCreate_at());
            st.setDate(10, p.getUpdated_at());
            st.setInt(11, p.getCategory_id());
            st.setString(12, p.getProduct_id());

            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        ProductDao pdb = new ProductDao();
        List<Product> listp = pdb.getAll();

        for (int i = 0; i < 2; i++) {
            System.out.println(listp.get(i).toString());
        }

    }
}
