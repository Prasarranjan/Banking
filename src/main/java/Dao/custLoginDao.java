package Dao;

import Bean.AccountDetails;
import Bean.Admin;
import Util.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class custLoginDao {
    public static boolean validateUser(String custUserId, String custPass) {
        boolean isValid = false;
        try {
            // Establish a connection
            Connection con = DbConnection.getConnection();

            // SQL query to check if admin exists with the provided email and password
            String query = "SELECT COUNT(*) FROM customer WHERE custUserId = ? AND custPass = ?";
            PreparedStatement ps = con.prepareStatement(query);

            // Set parameters for the query
            ps.setString(1, custUserId);
            ps.setString(2, custPass);

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

    public static AccountDetails getUserByEmailAndPassword(String userid, String password) {
        AccountDetails A = null;
        try (Connection con = DbConnection.getConnection();)
        {
            String query = "SELECT c.custPass,c.custId,c.custImg AS custImg,CONCAT(c.custFname, ' ', c.custLname) AS customername, b.branchName AS branchName, at.accTypeName AS accTypeName, a.accNumber AS accNumber,a.openingDate AS openingDate, a.balance AS balance, a.acctStatus AS acctStatus  FROM account a JOIN customer c ON a.custId = c.custId JOIN branch b ON a.branchId = b.branchId JOIN mobiledevice md ON c.deviceId = md.deviceId JOIN accounttype at ON a.accTypeId = at.accTypeId where c.custUserId=? and c.custPass=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, userid);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                A = new AccountDetails();
                A.setCustomerPassword(rs.getString("custPass"));
                A.setCustomerId(rs.getInt("custId"));
                A.setCustomerName(rs.getString("customername"));
                A.setCustomerImage(rs.getString("custImg"));
                A.setBranchName(rs.getString("branchName"));
                A.setAccountTypeName(rs.getString("accTypeName"));
                A.setAccountNumber(rs.getString("accNumber"));
                A.setOpeningDate(rs.getString("openingDate"));
                A.setBalance(rs.getDouble("balance"));
                A.setIsActive(rs.getBoolean("acctStatus"));
                // Add more fields as necessary
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return A;
    }
    }
