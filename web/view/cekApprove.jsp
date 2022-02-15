<%-- 
    Document   : cekApprove
    Created on : Feb 8, 2022, 8:26:05 PM
    Author     : Ella
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%--

            String status = request.getParameter("status");
            String no_induk = request.getParameter("no_induk");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/genap", "root", "");

                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("update peminjaman set status = diterima where no_induk = '" + no_induk + "'");

                request.getRequestDispatcher("approve.jsp").include(request, response);
            } catch (Exception e) {
                out.println("oh null");
            }
        --%>
        <%
            String status = request.getParameter("status");
            out.println(status);
            %>
    </body>
</html>
