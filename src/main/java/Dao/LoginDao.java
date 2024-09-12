package Dao;

import Bean.Admin;
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


        public static Admin getAdminByEmailAndPassword(String email, String password) {
            Admin admin = null;
            try (Connection con = DbConnection.getConnection();)
            {
                String query = "SELECT adminId,adminName,adminPhoto from admin where adminEmail=? and adminPassword=?;";
                PreparedStatement ps = con.prepareStatement(query);
                ps.setString(1, email);
                ps.setString(2, password);

                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    admin = new Admin();
                    admin.setAdminId(rs.getInt("adminId"));
                    admin.setAdminName(rs.getString("adminName"));
                    admin.setAdminPhoto(rs.getString("adminPhoto"));
                    // Add more fields as necessary
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return admin;
        }
    }

