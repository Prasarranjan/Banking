package Bean;

public class Account {
    private int accId;
    private long accNumber;
    private String openingDate;
    private double balance;
    private String closingDate;
    private byte acctStatus;
    private int custId;
    private int accTypeId;
    private int branchId;

    // Constructor (optional, for initialization)
    public Account() {
    }

    // Getters and Setters
    public int getAccId() {
        return accId;
    }

    public void setAccId(int accId) {
        this.accId = accId;
    }

    public long getAccNumber() {
        return accNumber;
    }

    public void setAccNumber(long accNumber) {
        this.accNumber = accNumber;
    }

    public String getOpeningDate() {
        return openingDate;
    }

    public void setOpeningDate(String openingDate) {
        this.openingDate = openingDate;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public String getClosingDate() {
        return closingDate;
    }

    public void setClosingDate(String closingDate) {
        this.closingDate = closingDate;
    }

    public byte getAcctStatus() {
        return acctStatus;
    }

    public void setAcctStatus(byte acctStatus) {
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

    // toString method
    @Override
    public String toString() {
        return "Account{" +
                "accId=" + accId +
                ", accNumber=" + accNumber +
                ", openingDate='" + openingDate + '\'' +
                ", balance=" + balance +
                ", closingDate='" + closingDate + '\'' +
                ", acctStatus=" + acctStatus +
                ", custId=" + custId +
                ", accTypeId=" + accTypeId +
                ", branchId=" + branchId +
                '}';
    }
}

