package Dao;

import Util.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {

    public static boolean validateAdmin(String adminEmail, String adminPassword) {
        boolean isValid = false;
        try {
            // Establish a connection
            Connection con = DbConnection.getConnection();

            // SQL query to check if admin exists with the provided email and password
            String query = "SELECT COUNT(*) FROM admin WHERE adminEmail = ? AND adminPassword = ?";
            PreparedStatement ps = con.prepareStatement(query);

            // Set parameters for the query
            ps.setString(1, adminEmail);
            ps.setString(2, adminPassword);

            // Execute the query
            ResultSet rs = ps.executeQuery();

            // Check if any matching admin exists
            if (rs.next()) {
                int count = rs.getInt(1); // Fetch the count
                if (count > 0) {
                    isValid = true; // If count > 0, admin is valid
                }
            }

            // Close resources
            rs.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isValid;
    }
}
