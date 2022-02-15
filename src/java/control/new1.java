/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
public class new1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet new1</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet new1 at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
//    }

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
//        processRequest(request, response);
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
//    processRequest(request, response);
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String ussername=request.getParameter("ussername");
        String password=request.getParameter("password");
        
      if(password.equals("admin")){
          if(ussername.equals("")){
               request.getRequestDispatcher("/view/index.html").include(request, response);
          }else{
          try{
             
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/genap","root","");
            
            Statement st = con.createStatement();
            ResultSet rs=st.executeQuery("select * from ail where nip='"+ussername+"'and password='"+password+"'");
            if(rs.next()){
               request.getRequestDispatcher("/view/sidebaradmin.html").include(request, response);
                out.println("Ini Punya Admin! ");
            }else {
               
               // request.getRequestDispatcher("/view/indexadmin.jsp").include(request, response);
            }
            con.close();
        }catch(Exception e){
            out.println("Salah us dan pass");
        }
          }
      }else if(password.equals("kaleb1")||password.equals("kaleb2")){
          try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/genap","root","");
            
            Statement st = con.createStatement();
            ResultSet rs=st.executeQuery("select * from kalab where nip='"+ussername+"' and password='"+password+"'");
            if(rs.next()){
               request.getRequestDispatcher("/view/indexadmin.jsp").include(request, response);
                out.println("Ini Punya KALAB! ");
            }else {
               request.getRequestDispatcher("/view/indexadmin.jsp").include(request, response);
            }
            con.close();
        }catch(Exception e){
             out.println("Salah us dan pass");
        }
      }else{
           try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/genap","root","");
            
            Statement st = con.createStatement();
            ResultSet rs=st.executeQuery("select * from peminjam where no_induk='"+ussername+"' and password='"+password+"'");
            if(rs.next()){
               request.getRequestDispatcher("/view/home.html").include(request, response);
                out.println("Ini Punya user! ");
            }else {
               request.getRequestDispatcher("/view/index.html").include(request, response);
            }
            con.close();
        }catch(Exception e){
             out.println("Salah us dan pass");
        }
      }
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
