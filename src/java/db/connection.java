/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
/**
 *
 * @author Ella
 */
public class connection {
    public static Connection getConnection() {
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver"); 
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+
                    "genap","root","");
        }catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
        return con;
    }
    public static boolean checkConnection(){
        boolean stat=false;
        if(getConnection()!=null){
            stat=true;
        }
        return stat;
    }
    public static void main(String[] args) {
        System.out.println(checkConnection());
    }
    public static boolean saveQuery(String Query,Connection con){
        boolean stat=false;
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(Query);
            stat=ps.execute();
            ps.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return stat;
    }
}
