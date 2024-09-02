package Util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
    public static Connection getConnection() {

        Connection con=null;
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con= DriverManager.getConnection( "jdbc:mysql://localhost:3306/Banking","root","prasar123");

        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;

    }

    public static String Path() {
        String Path="/home/prasar/Documents/yourBank/src/main/webapp/admin/assets";
        return Path;
    }



}
