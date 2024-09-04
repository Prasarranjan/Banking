package Dao;

import Bean.Bank;
import Bean.Branch;
import Util.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BranchDao {




    public int saveBranch(Branch br) {
        int status=0;
        try {
            Connection con= DbConnection.getConnection();
            String query="INSERT INTO branch(branchName,location,createdDate,createdBy,updatedDate,updatedBy,bankId)VALUES(?,?,?,?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,br.getBranchName());
            ps.setString(2,br.getLocation());
            ps.setString(3,br.getCreatedDate());
            ps.setString(4,br.getCreatedBy());
            ps.setString(5,br.getUpdatedDate());
            ps.setString(6,br.getUpdatedBy());
            ps.setInt(7,br.getBankId());
            status=ps.executeUpdate();
            con.close();
        }  catch (SQLException e) {e.printStackTrace();}
        return status;
    }

    public List<Branch> viewBranch() {
        ArrayList<Branch> bankList=new ArrayList<Branch>();//Creating Arraylist
        try {
            Connection con = DbConnection.getConnection();
            String sql="select branchId,branchName,location,createdDate,createdBy,updatedDate,updatedBy,IsActive from branch";
            PreparedStatement ps=con.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                Branch br = new Branch();
                br.setBranchId(rs.getInt(1));
                br.setBranchName(rs.getString(2));
                br.setLocation(rs.getString(3));
                br.setCreatedDate(rs.getString(4));
                br.setCreatedBy(rs.getString(5));
                br.setUpdatedDate(rs.getString(6));
                br.setUpdatedBy(rs.getString(7));
                br.setActive(rs.getBoolean(8));
                bankList.add(br);
            }
            con.close();
        }catch(Exception ex) {ex.printStackTrace();}
        return bankList ;
    }
    public static int deactiveBranch(int id) {
        int r = 0;
        Connection con =DbConnection.getConnection();
        try{
            String deleteUser="update branch set IsActive=0 where branchId=?";
            PreparedStatement ps = con.prepareStatement(deleteUser);
            ps.setInt(1,id);
            r =ps.executeUpdate();

        }
        catch (Exception e){
            e.printStackTrace();
        }
        return r;
    }

    public List<Branch> getBranchbyid(int id) {
        ArrayList<Branch> list=new ArrayList<>();
        Connection con =DbConnection.getConnection();
        try {
            String selectUserbyID="select branchId,branchName,location,createdDate,createdBy,updatedDate,updatedBy,IsActive from branch where branchId=?";
            PreparedStatement ps = con.prepareStatement(selectUserbyID);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Branch user = new Branch();
                user.setBranchId(rs.getInt("branchId"));
                user.setBranchName(rs.getString("branchName"));
                user.setLocation(rs.getString("location"));
                user.setCreatedDate(rs.getString("createdDate"));
                user.setCreatedBy(rs.getString("createdBy"));
                user.setCreatedDate(rs.getString("updatedDate"));
                user.setUpdatedBy(rs.getString("updatedBy"));
                user.setActive(rs.getBoolean("IsActive"));
                list.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public static int updateBranch(Branch u) {
        int result =0;
        Connection con =DbConnection.getConnection();
        try{
            String updateUser="update branch set branchName=?,location=?,createdDate=?,createdBy=?,updatedDate=?,updatedBy=?,IsActive=?  where branchId=?";
            PreparedStatement ps =con.prepareStatement(updateUser);
            ps.setString(1,u.getBranchName());
            ps.setString(2,u.getLocation());
            ps.setString(3,u.getCreatedDate());
            ps.setString(4,u.getCreatedBy());
            ps.setString(5,u.getUpdatedDate());
            ps.setString(6,u.getUpdatedBy());
            ps.setBoolean(7,u.isActive());
            ps.setInt(8,u.getBankId());
            result=ps.executeUpdate();

        }
        catch (Exception f ){
            f.printStackTrace();
        }
        return result;
    }
    }

