/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hades
 */
public class DBContext {

    
    public Connection getConnection() throws Exception {
        Connection conn = null;
        String dbUser = "sa";
        String dbPassword = "123";
        String port = "1433"; 
        String IP = "127.0.0.1";
        String ServerName = "DESKTOP-QRGLSIH\\YUNBEN";
        String DBName = "Plant";
        String driverClass = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        String dbURL = "jdbc:sqlserver://" + ServerName + ";databaseName=" + DBName + ";encrypt=false;trustServerCertificate=false;loginTimeout=30";
        try {
            DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        
        return conn;
    }

//    public static void main(String[] args) throws Exception {
//        DBContext db = new DBContext();
//        Connection conn = db.getConnection();
//        System.out.println(conn);
//    }
}
