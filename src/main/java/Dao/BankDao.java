package Dao;

import Bean.Bank;
import Util.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BankDao {


    public int saveBank(Bank bank) {
        int status=0;
        try {
            Connection con= DbConnection.getConnection();
            String query="INSERT INTO Bank(bankName,bankEmail,bankPhone,bankImg)VALUES(?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,bank.getBankName());
            ps.setString(2,bank.getBankEmail());
            ps.setString(3,bank.getBankPhone());
            ps.setString(4,bank.getBankImg());
            status=ps.executeUpdate();
            con.close();
        }  catch (SQLException e) {e.printStackTrace();}
        return status;
    }

    public List<Bank> viewBanks() {
        ArrayList<Bank> bankList=new ArrayList<Bank>();//Creating Arraylist
        try {
            Connection con = DbConnection.getConnection();
            String sql="select bankId,bankname,bankemail,bankphone,bankimg from Bank";
            PreparedStatement ps=con.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                Bank bank = new Bank();
                bank.setBankId(rs.getInt(1));
                bank.setBankName(rs.getString(2));
                bank.setBankEmail(rs.getString(3));
                bank.setBankPhone(rs.getString(4));
                bank.setBankImg(rs.getString(5));
                bankList.add(bank);
            }
            con.close();
        }catch(Exception ex) {ex.printStackTrace();}
        return bankList ;
    }
    public static int deleteBank(int id){
        int result = 0;
        Connection con =DbConnection.getConnection();
        try{
            String deleteUser="delete from Bank where bankId=?";
            PreparedStatement ps = con.prepareStatement(deleteUser);
            ps.setInt(1,id);
            result =ps.executeUpdate();

        }
        catch (Exception e){
            e.printStackTrace();
        }
        return result;
    }

    public List<Bank> getBankbyid(int id) {
        ArrayList<Bank> list=new ArrayList<>();
        Connection con =DbConnection.getConnection();
        try {
            String selectUserbyID="select bankId,bankName,bankEmail,bankPhone,bankImg from Bank where bankId=?";
            PreparedStatement ps = con.prepareStatement(selectUserbyID);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Bank user = new Bank();
                user.setBankId(rs.getInt("bankId"));
                user.setBankName(rs.getString("bankName"));
                user.setBankPhone(rs.getString("bankPhone"));
                user.setBankEmail(rs.getString("bankEmail"));
                user.setBankImg(rs.getString("bankImg"));

                list.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public static int updateBank(Bank u) {
        int result =0;
        Connection con =DbConnection.getConnection();
        try{
            String updateUser="update Bank set bankName=?,bankEmail=?,bankPhone=?,bankImg=?  where bankId=?";
            PreparedStatement ps =con.prepareStatement(updateUser);
            ps.setString(1,u.getBankName());
            ps.setString(2,u.getBankEmail());
            ps.setString(3,u.getBankPhone());
            ps.setString(4,u.getBankImg());
            ps.setInt(5,u.getBankId());
            result=ps.executeUpdate();

        }
        catch (Exception f ){
            f.printStackTrace();
        }
        return result;
    }
    }




