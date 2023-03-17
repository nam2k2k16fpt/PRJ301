/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Dal.UsersDao;
import Model.Users;
import jakarta.servlet.ServletContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("weblogin/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try ( PrintWriter out = response.getWriter()) {
            
            //______________________________________________
            String user = request.getParameter("username");
            String pass = request.getParameter("psw");
            HttpSession session = request.getSession();
           
            UsersDao udb = new UsersDao();
            Users u = udb.getCheckAccount(user, pass);
            if (u == null) {
                request.setAttribute("error1", "It's look like you're not a yet member!");
                request.getRequestDispatcher("weblogin/login.jsp").forward(request, response);
            } else {
              //checkrole staff or admin
              
                session.setAttribute("account", u);
                response.sendRedirect("dashbsr");
            }
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
