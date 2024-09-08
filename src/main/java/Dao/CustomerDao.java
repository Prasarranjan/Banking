package Dao;

import Bean.customer;
import Util.DbConnection;

import java.sql.*;
import java.util.Date;

public class CustomerDao {
    public int saveCustomer(customer cs) {
        int status=0;
        try {
            Connection con= DbConnection.getConnection();
            String query="INSERT INTO customer(custFname, custLname, custEmail, custPhone, custRedg, custDOB, custAddress,custUserId, custPass,  custImg)VALUES(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,cs.getCustFname());
            ps.setString(2,cs.getCustLname());
            ps.setString(3,cs.getCustEmail());
            ps.setString(4,cs.getCustPhone());
            ps.setTimestamp(5, new Timestamp(new Date().getTime())); // custRedg (current timestamp)
            ps.setString(6,cs.getCustDOB());
            ps.setString(7,cs.getCustAddress());
            ps.setString(8,cs.getCustPass());
            ps.setString(9,cs.getCustUserId());
            ps.setString(10,cs.getCustImg());

            status=ps.executeUpdate();
            con.close();
        }  catch (SQLException e) {e.printStackTrace();}
        return status;
    }
}
