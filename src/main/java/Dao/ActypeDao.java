package Dao;

import Bean.AddacType;
import Bean.Bank;
import Util.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ActypeDao {
    public int saveacType(AddacType a) {
        int status=0;
        try {
            Connection con= DbConnection.getConnection();
            String query="INSERT INTO accounttype(accTypeName)VALUES(?)";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,a.getAccTypeName());
            status=ps.executeUpdate();
            con.close();
        }  catch (SQLException e) {e.printStackTrace();}
        return status;
    }

    public List<AddacType> viewActype() {
        ArrayList<AddacType> bankList=new ArrayList<AddacType>(
        );//Creating Arraylist
        try {
            Connection con = DbConnection.getConnection();
            String sql="select accTypeName from accounttype";
            PreparedStatement ps=con.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                AddacType aa = new AddacType();
                aa.setAccTypeName(rs.getString(1));
                bankList.add(aa);
            }
            con.close();
        }catch(Exception ex) {ex.printStackTrace();}
        return bankList ;
    }

}
