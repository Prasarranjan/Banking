package Dao;

import Bean.Admin;
import Bean.Bank;
import Util.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AdminDAo {


    public int saveAdmin(Admin ad) {
        int status=0;
        try {
            Connection con= DbConnection.getConnection();
            String query="INSERT INTO admin(adminName, adminEmail, adminPassword, adminPhoto, adminPNum)VALUES(?,?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,ad.getAdminName());
            ps.setString(2,ad.getAdminEmail());
            ps.setString(3,ad.getAdminPassword());
            ps.setString(4,ad.getAdminPhoto());
            ps.setString(5,ad.getAdminPNum());
            status=ps.executeUpdate();
            con.close();
        }  catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    public List<Admin> viewAdmin() {
        ArrayList<Admin> bankList=new ArrayList<Admin>();//Creating Arraylist
        try {
            Connection con = DbConnection.getConnection();
            String sql="select adminId,adminName, adminEmail, adminPassword, adminPhoto, adminPNum from admin";
            PreparedStatement ps=con.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                Admin aa = new Admin();
                aa.setAdminId(rs.getInt(1));
                aa.setAdminName(rs.getString(2));
                aa.setAdminEmail(rs.getString(3));
                aa.setAdminPassword(rs.getString(4));
                aa.setAdminPhoto(rs.getString(5));
                aa.setAdminPNum(rs.getString(6));
                bankList.add(aa);

            }
            con.close();
        }catch(Exception ex) {ex.printStackTrace();}
        return bankList ;
    }
    public static int deleteAdmin(int id) {
        int result = 0;
        Connection con =DbConnection.getConnection();
        try{
            String deleteUser="delete from admin where adminId=?";
            PreparedStatement ps = con.prepareStatement(deleteUser);
            ps.setInt(1,id);
            result =ps.executeUpdate();

        }
        catch (Exception e){
            e.printStackTrace();
        }
        return result;
    }

    public List<Admin> getBankbyid(int id) {
        ArrayList<Admin> list=new ArrayList<>();
        Connection con =DbConnection.getConnection();
        try {
            String selectUserbyID="select adminId,adminName, adminEmail, adminPassword, adminPhoto, adminPNum  from admin where adminId=?";
            PreparedStatement ps = con.prepareStatement(selectUserbyID);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Admin a = new Admin();
                a.setAdminId(rs.getInt("adminId"));
                a.setAdminName(rs.getString("adminName"));
                a.setAdminEmail(rs.getString("adminEmail"));
                a.setAdminPassword(rs.getString("adminPassword"));
                a.setAdminPhoto(rs.getString("adminPhoto"));
                a.setAdminPNum(rs.getString("adminPNum"));
                list.add(a);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}

