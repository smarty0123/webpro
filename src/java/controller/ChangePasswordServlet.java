/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

/**
 *
 * @author kikitt
 */
@WebServlet(name = "ChangePasswordServlet", urlPatterns = {"/ChangePasswordServlet"})
public class ChangePasswordServlet extends HttpServlet {



    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String current_password = request.getParameter("current_password");
        String new_password = request.getParameter("new_password");
        String confirm_new_password = request.getParameter("confirm_new_password");

        HttpSession session = request.getSession();
        String s_username = (String) session.getAttribute("username");

        ServletContext ctx = getServletContext();
        Connection conn = (Connection) ctx.getAttribute("connection");
        try {
            String sql = "SELECT * FROM account WHERE username = '" + s_username + "'";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                String db_password = rs.getString("password");
                if (current_password.equals(db_password)) {
                    response.setContentType("text/html;charset=UTF-8");
                    if (new_password.equals(confirm_new_password)) {
                        try (PrintWriter out = response.getWriter()) {
                            String sql2 = "UPDATE account SET password = '" + new_password + "' WHERE username = '" + s_username + "'";
                            Statement stmt2 = conn.createStatement();
                            stmt2.executeUpdate(sql2);
                            /* TODO output your page here. You may use following sample code. */
                            out.println("<!DOCTYPE html>");
                            out.println("<html>");
                            out.println("<head>");
                            out.println("<title>Servlet LoginServlet</title>");
                            out.println("</head>");
                            out.println("<body>");
                            out.println("<h1>Member Information</h1>");
                            out.println("User: " + s_username + "<br>");
                            out.println("Pass: " + new_password + "<br>");
                            out.println("</body>");
                            out.println("</html>");
                        }
                    }

                } else {
                    response.sendRedirect("loginfail.html");
                }
            } else {
                response.sendRedirect("wronguser.html");
            }

        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
