package Bean;

public class MobileDevice {
    private int deviceId;
    private String latitude;
    private String longitude;
    private String loginDate;

    // Getter and Setter for deviceId
    public int getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(int deviceId) {
        this.deviceId = deviceId;
    }

    // Getter and Setter for latitude
    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    // Getter and Setter for longitude
    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    // Getter and Setter for loginDate
    public String getLoginDate() {
        return loginDate;
    }

    public void setLoginDate(String loginDate) {
        this.loginDate = loginDate;
    }

    // toString method
    @Override
    public String toString() {
        return "MobileDevice{" +
                "deviceId=" + deviceId +
                ", latitude='" + latitude + '\'' +
                ", longitude='" + longitude + '\'' +
                ", loginDate='" + loginDate + '\'' +
                '}';
    }
}
