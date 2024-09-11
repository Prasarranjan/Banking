package Dao;

import Bean.Bank;
import Bean.customer;
import Util.DbConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

public class CustomerDao {




    public int saveCustomer(customer cs) {
        int status = 0;
        try {
            Connection con = DbConnection.getConnection();

            // Generate a unique 8-digit custUserId
            int custUserId = generateUniqueCustUserId(con);

            String query = "INSERT INTO customer(custFname, custLname, custEmail, custPhone, custRedg, custDOB, custAddress, custUserId, custPass, custImg)VALUES(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);

            // Set parameters
            ps.setString(1, cs.getCustFname());
            ps.setString(2, cs.getCustLname());
            ps.setString(3, cs.getCustEmail());
            ps.setString(4, cs.getCustPhone());
            ps.setTimestamp(5, new Timestamp(new Date().getTime())); // custRedg (current timestamp)
            ps.setString(6, cs.getCustDOB());
            ps.setString(7, cs.getCustAddress());
            ps.setInt(8, custUserId); // Set the generated unique 8-digit custUserId
            ps.setString(9, cs.getCustPass());
            ps.setString(10, cs.getCustImg());

            // Execute update
            status = ps.executeUpdate();

            // Close connection
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    // Method to generate a unique 8-digit number and check its uniqueness in the database
    private int generateUniqueCustUserId(Connection con) throws SQLException {
        Random random = new Random();
        int custUserId;
        boolean isUnique;

        do {
            custUserId = 10000000 + random.nextInt(90000000); // Generate 8-digit number
            String query = "SELECT COUNT(*) FROM customer WHERE custUserId = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, custUserId);
            ResultSet rs = ps.executeQuery();
            rs.next();
            isUnique = rs.getInt(1) == 0; // If the count is 0, it's unique
            rs.close();
            ps.close();
        } while (!isUnique); // Repeat if the number is not unique

        return custUserId;
    }

    public List<customer> viewCustomer() {
        ArrayList<customer> csList=new ArrayList<customer>();//Creating Arraylist
        try {
            Connection con = DbConnection.getConnection();
            String sql="select custId, custFname, custLname, custEmail, custPhone, custRedg, custDOB, custAddress, custUserId, custPass,  custImg from customer";
            PreparedStatement ps=con.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                customer css = new customer();
                css.setCustId(rs.getInt(1));
                css.setCustFname(rs.getString(2));
                css.setCustLname(rs.getString(3));
                css.setCustEmail(rs.getString(4));
                css.setCustPhone(rs.getString(5));
                css.setCustRedg(rs.getString(6));
                css.setCustDOB(rs.getString(7));
                css.setCustAddress(rs.getString(8));
                css.setCustUserId(rs.getString(9));
                css.setCustPass(rs.getString(10));
                css.setCustImg(rs.getString(11));
                csList.add(css);


            }
            con.close();
        }catch(Exception ex) {ex.printStackTrace();}
        return csList ;
    }
    public static int deleteCutomer(int id) {
        int result = 0;
        Connection con =DbConnection.getConnection();
        try{
            String deleteUser="delete from customer where custId=?";
            PreparedStatement ps = con.prepareStatement(deleteUser);
            ps.setInt(1,id);
            result =ps.executeUpdate();

        }
        catch (Exception e){
            e.printStackTrace();
        }
        return result;
    }

    public List<customer> getCustbyid(int id) {
        ArrayList<customer> list=new ArrayList<>();
        Connection con =DbConnection.getConnection();
        try {
            String selectUserbyID="select custId,custFname, custLname, custEmail, custPhone,  custDOB, custAddress,  custPass,  custImg from customer where custId=?";
            PreparedStatement ps = con.prepareStatement(selectUserbyID);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                customer user = new customer();
                user.setCustId(rs.getInt("custId"));
                user.setCustFname(rs.getString("custFname"));
                user.setCustLname(rs.getString("custLname"));
                user.setCustEmail(rs.getString("custEmail"));
                user.setCustPhone(rs.getString("custPhone"));
                user.setCustDOB(rs.getString("custDOB"));
                user.setCustAddress(rs.getString("custAddress"));
                user.setCustPass(rs.getString("custPass"));
                user.setCustImg(rs.getString("custImg"));
                list.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public static int updateCust(customer u) {
        int result =0;
        Connection con =DbConnection.getConnection();
        try{
            String updateUser="update customer set custFname=?, custLname=?, custEmail=?, custPhone=?,  custDOB=?, custAddress=?,  custPass=?  where custId=?";
            PreparedStatement ps =con.prepareStatement(updateUser);
            ps.setString(1,u.getCustFname());
            ps.setString(2,u.getCustLname());
            ps.setString(3,u.getCustEmail());
            ps.setString(4,u.getCustPhone());
            ps.setString(5,u.getCustDOB());
            ps.setString(6,u.getCustAddress());
            ps.setString(7,u.getCustPass());
            ps.setInt(8,u.getCustId());
            result=ps.executeUpdate();

        }
        catch (Exception f ){
            f.printStackTrace();
        }
        return result;
    }
    public int getCoustid(customer c) {
       int status=0;
        try {
            Connection con = DbConnection.getConnection();
            String query = "INSERT INTO customer (custFrame, custLname, custEmail, custPhone, custRedgDate, custDOB, custAddress, custuserId, custPass, deviceld, custImg) values(?,?,?,?,now(),?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query , Statement.RETURN_GENERATED_KEYS);
            ps.setString(1,c.getCustFname());
            ps.setString(2,c.getCustLname());
            ps.setString(3,c.getCustEmail());
            ps.setString(4,c.getCustPhone());
            ps.setString(5,c.getCustDOB());
            ps.setString(6,c.getCustAddress());
            ps.setInt(7, c.getCustId());
            ps.setString(8,c.getCustPass());
            ps.setInt(9,c.getDeviceId());
            ps.setString(10,c.getCustImg());
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                status = rs.getInt(1);
            }
            con.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return status;
    }
    }



