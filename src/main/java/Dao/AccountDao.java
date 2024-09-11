package Dao;

import Bean.Account;
import Util.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AccountDao {
    public static int createNewAccount( Long accNumber,int custId,int accTypeId,double balance ,int branchId) {
        int status=0;
        try {
            Connection con= DbConnection.getConnection();
            String query="INSERT INTO account(accNumber,custId,accTypeId ,balance,branchId,openingDate )VALUES(?,?,?,?,?,now())";
            PreparedStatement ps=con.prepareStatement(query);
            //accNumber,custId,accTypeId,balance,branchId
            ps.setLong(1,accNumber);
            ps.setInt(2,custId);
            ps.setInt(3,accTypeId);
            ps.setDouble(4,balance);
            ps.setInt(5,branchId);
            status=ps.executeUpdate();
            con.close();
        }  catch (SQLException e) {e.printStackTrace();}
        return status;
    }
    }

