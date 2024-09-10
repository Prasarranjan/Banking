package Bean;

public class Account {
    private int accId;
    private String accNumber;
    private String openingDate;
    private String balance;
    private String acctStatus;
    private int custId;
    private int accTypeId;
    private int branchId;
    private String firstName;
    private String middleName;
    private String lastName;
    private String email;
    private String phoneNo;
    private String address;
    private String aadharNo;
    private String acImg;

    // Getter and Setter methods

    public int getAccId() {
        return accId;
    }

    public void setAccId(int accId) {
        this.accId = accId;
    }

    public String getAccNumber() {
        return accNumber;
    }

    public void setAccNumber(String accNumber) {
        this.accNumber = accNumber;
    }

    public String getOpeningDate() {
        return openingDate;
    }

    public void setOpeningDate(String openingDate) {
        this.openingDate = openingDate;
    }

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

    public String getAcctStatus() {
        return acctStatus;
    }

    public void setAcctStatus(String acctStatus) {
        this.acctStatus = acctStatus;
    }

    public int getCustId() {
        return custId;
    }

    public void setCustId(int custId) {
        this.custId = custId;
    }

    public int getAccTypeId() {
        return accTypeId;
    }

    public void setAccTypeId(int accTypeId) {
        this.accTypeId = accTypeId;
    }

    public int getBranchId() {
        return branchId;
    }

    public void setBranchId(int branchId) {
        this.branchId = branchId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAadharNo() {
        return aadharNo;
    }

    public void setAadharNo(String aadharNo) {
        this.aadharNo = aadharNo;
    }

    public String getAcImg() {
        return acImg;
    }

    public void setAcImg(String acImg) {
        this.acImg = acImg;
    }

    // toString method
    @Override
    public String toString() {
        return "Account{" +
                "accId=" + accId +
                ", accNumber='" + accNumber + '\'' +
                ", openingDate='" + openingDate + '\'' +
                ", balance=" + balance +
                ", acctStatus='" + acctStatus + '\'' +
                ", custId=" + custId +
                ", accTypeId=" + accTypeId +
                ", branchId=" + branchId +
                ", firstName='" + firstName + '\'' +
                ", middleName='" + middleName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", phoneNo='" + phoneNo + '\'' +
                ", address='" + address + '\'' +
                ", aadharNo='" + aadharNo + '\'' +
                ", acImg='" + acImg + '\'' +
                '}';
    }
}
