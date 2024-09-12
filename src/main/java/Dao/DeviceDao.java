package Dao;

import Util.DbConnection;

import java.sql.*;

public class DeviceDao {
    public int saveDevice(String latitude, String longitude) {
        int status=0;
        try {
            Connection con= DbConnection.getConnection();
            String query="INSERT INTO mobiledevice (latitude, longitude, loginDate) VALUES (?,?, now())";
            PreparedStatement ps=con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, latitude);
            ps.setString(2, longitude);
            ps.executeUpdate();
// get the auto-generated keys
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                status =rs.getInt(1);
            }
            con.close();
        } catch (SQLException e) { e.printStackTrace();}
        return status;
    }
}
