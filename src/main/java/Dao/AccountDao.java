package Dao;

import Bean.Account;
import Util.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AccountDao {
    public int createAccount(Account ac) {
        int status=0;
        try {
            Connection con= DbConnection.getConnection();
            String query="INSERT INTO Account( openingDate, balance, firstName, middleName, lastName, email, phoneNo, address,aadharNo,  acImg)VALUES(now(),?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,ac.getBalance());
            ps.setString(2,ac.getFirstName());
            ps.setString(3,ac.getMiddleName());
            ps.setString(4,ac.getLastName());
            ps.setString(5,ac.getEmail());
            ps.setString(6,ac.getPhoneNo());
            ps.setString(7,ac.getAddress());
            ps.setString(8, ac.getAadharNo());
            ps.setString(9,ac.getAcImg());
            status=ps.executeUpdate();
            con.close();
        }  catch (SQLException e) {e.printStackTrace();}
        return status;
    }
    }

