/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Crud_product;

import Dal.ProductDao;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;

/**
 *
 * @author Admin
 */
public class AddproductServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddproductServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddproductServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        ProductDao pdb = new ProductDao();
        String p_id = request.getParameter("pid");
        String p_name = request.getParameter("pname");
        String quantity = request.getParameter("pquan");
        String unit = request.getParameter("unit");
        String status = request.getParameter("status");
        status = "stocking";
        String sup_id = request.getParameter("sup");
        String price = request.getParameter("price");
        String cat = request.getParameter("cat");
        String desc = request.getParameter("desc");
        String photo = request.getParameter("photo");
        String createat = request.getParameter("createat");
        String updateat = request.getParameter("updateat");
        
        String rs = "";
        
        if(p_id.isEmpty()){
         rs = "product_id is empty";    
         request.setAttribute("error", rs);
         request.getRequestDispatcher("addproduct.jsp").forward(request, response);
        }
        if(p_name.isEmpty()){
             rs = "product_name is empty";    
             request.setAttribute("error", rs);
         request.getRequestDispatcher("addproduct.jsp").forward(request, response);
        }
        if(quantity.isEmpty()){
             rs = "quantity is empty";    
             request.setAttribute("error", rs);
         request.getRequestDispatcher("addproduct.jsp").forward(request, response);
        }
        if(price.isEmpty()){
             rs = "price is empty";    
             request.setAttribute("error", rs);
         request.getRequestDispatcher("addproduct.jsp").forward(request, response);
        }
        if(cat.isEmpty()){
             rs = "CategoryID is empty";    
             request.setAttribute("error", rs);
         request.getRequestDispatcher("addproduct.jsp").forward(request, response);
        }
        if(createat.isEmpty()){
             rs = "create_at is empty";    
             request.setAttribute("error", rs);
         request.getRequestDispatcher("addproduct.jsp").forward(request, response);
        }
        if(updateat.isEmpty()){
             rs = "update_at is empty";    
             request.setAttribute("error", rs);
         request.getRequestDispatcher("addproduct.jsp").forward(request, response);
        }
        
        
        
        
        //check trung nhau product_id
        Product p = pdb.getCheckIdProduct(p_id);
        if(p!= null){
            String ms = p_id + " exsited!!";
                request.setAttribute("error", ms);
                request.getRequestDispatcher("addproduct.jsp").forward(request, response);
        }else{
            Product p1 = new Product(p_id, p_name, Integer.parseInt(quantity), unit, status, sup_id, desc, photo, Float.parseFloat(price), Date.valueOf(createat), Date.valueOf(updateat), Integer.parseInt(cat));
            pdb.Insertproduct(p);
            response.sendRedirect("lps");
        }
        
                
        
    } 

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
