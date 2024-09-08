package Bean;

public class Admin {
    private int adminId;
    private String adminName;
    private String adminEmail;
    private String adminPassword;
    private String adminPhoto;
    private String adminPNum;

    // Getter and Setter for adminId
    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    // Getter and Setter for adminName
    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    // Getter and Setter for adminEmail
    public String getAdminEmail() {
        return adminEmail;
    }

    public void setAdminEmail(String adminEmail) {
        this.adminEmail = adminEmail;
    }

    // Getter and Setter for adminPassword
    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }

    // Getter and Setter for adminPhoto
    public String getAdminPhoto() {
        return adminPhoto;
    }

    public void setAdminPhoto(String adminPhoto) {
        this.adminPhoto = adminPhoto;
    }

    // Getter and Setter for adminPNum
    public String getAdminPNum() {
        return adminPNum;
    }

    public void setAdminPNum(String adminPNum) {
        this.adminPNum = adminPNum;
    }

    // toString method
    @Override
    public String toString() {
        return "Admin{" +
                "adminId=" + adminId +
                ", adminName='" + adminName + '\'' +
                ", adminEmail='" + adminEmail + '\'' +
                ", adminPassword='" + adminPassword + '\'' +
                ", adminPhoto='" + adminPhoto + '\'' +
                ", adminPNum='" + adminPNum + '\'' +
                '}';
    }
}
