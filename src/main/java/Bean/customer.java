package Bean;

public class customer {
    private int custId;
    private String custFname;
    private String custLname;
    private String custEmail;
    private String custPhone;
    private String custRedg;
    private String custDOB;
    private String custAddress;
    private String custUserId;
    private String custPass;
    private int deviceId;
    private String custImg;

    // Getters and Setters
    public int getCustId() {
        return custId;
    }

    public void setCustId(int custId) {
        this.custId = custId;
    }

    public String getCustFname() {
        return custFname;
    }

    public void setCustFname(String custFname) {
        this.custFname = custFname;
    }

    public String getCustLname() {
        return custLname;
    }

    public void setCustLname(String custLname) {
        this.custLname = custLname;
    }

    public String getCustEmail() {
        return custEmail;
    }

    public void setCustEmail(String custEmail) {
        this.custEmail = custEmail;
    }

    public String getCustPhone() {
        return custPhone;
    }

    public void setCustPhone(String custPhone) {
        this.custPhone = custPhone;
    }

    public String getCustRedg() {
        return custRedg;
    }

    public void setCustRedg(String custRedg) {
        this.custRedg = custRedg;
    }

    public String getCustDOB() {
        return custDOB;
    }

    public void setCustDOB(String custDOB) {
        this.custDOB = custDOB;
    }

    public String getCustAddress() {
        return custAddress;
    }

    public void setCustAddress(String custAddress) {
        this.custAddress = custAddress;
    }

    public String getCustUserId() {
        return custUserId;
    }

    public void setCustUserId(String  custUserId) {
        this.custUserId = custUserId;
    }

    public String getCustPass() {
        return custPass;
    }

    public void setCustPass(String custPass) {
        this.custPass = custPass;
    }

    public int getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(int deviceId) {
        this.deviceId = deviceId;
    }

    public String getCustImg() {
        return custImg;
    }

    public void setCustImg(String custImg) {
        this.custImg = custImg;
    }

    // toString() Method
    @Override
    public String toString() {
        return "Customer{" +
                "custId=" + custId +
                ", custFname='" + custFname + '\'' +
                ", custLname='" + custLname + '\'' +
                ", custEmail='" + custEmail + '\'' +
                ", custPhone='" + custPhone + '\'' +
                ", custRedg='" + custRedg + '\'' +
                ", custDOB='" + custDOB + '\'' +
                ", custAddress='" + custAddress + '\'' +
                ", custUserId=" + custUserId +
                ", custPass='" + custPass + '\'' +
                ", deviceId=" + deviceId +
                ", custImg='" + custImg + '\'' +
                '}';
    }
}

