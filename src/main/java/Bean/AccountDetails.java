package Bean;

public class AccountDetails {

        private String customerImage;
        private String customerName;
        private String branchName;
        private String accountTypeName;
        private String accountNumber;
        private String openingDate;
        private double balance;
        private double latitude;
        private double longitude;
        private boolean isActive;  // New field
        private int customerId;

    public String getCustomerPassword() {
        return customerPassword;
    }

    public void setCustomerPassword(String customerPassword) {
        this.customerPassword = customerPassword;
    }

    private String customerPassword;


    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }


        // Getters and Setters
        public String getCustomerImage() {
            return customerImage;
        }

        public void setCustomerImage(String customerImage) {
            this.customerImage = customerImage;
        }

        public String getCustomerName() {
            return customerName;
        }

        public void setCustomerName(String customerName) {
            this.customerName = customerName;
        }

        public String getBranchName() {
            return branchName;
        }

        public void setBranchName(String branchName) {
            this.branchName = branchName;
        }

        public String getAccountTypeName() {
            return accountTypeName;
        }

        public void setAccountTypeName(String accountTypeName) {
            this.accountTypeName = accountTypeName;
        }

        public String getAccountNumber() {
            return accountNumber;
        }

        public void setAccountNumber(String accountNumber) {
            this.accountNumber = accountNumber;
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

        public double getLatitude() {
            return latitude;
        }

        public void setLatitude(double latitude) {
            this.latitude = latitude;
        }

        public double getLongitude() {
            return longitude;
        }

        public void setLongitude(double longitude) {
            this.longitude = longitude;
        }

        public boolean getIsActive() {  // Getter for isActive
            return isActive;
        }

        public void setIsActive(boolean isActive) {  // Setter for isActive
            this.isActive = isActive;
        }

        // toString method
        @Override
        public String toString() {
            return "AccountDetails{" +
                    "customerImage='" + customerImage + '\'' +
                    ", customerName='" + customerName + '\'' +
                    ", branchName='" + branchName + '\'' +
                    ", accountTypeName='" + accountTypeName + '\'' +
                    ", accountNumber='" + accountNumber + '\'' +
                    ", openingDate=" + openingDate +
                    ", balance=" + balance +
                    ", latitude=" + latitude +
                    ", longitude=" + longitude +
                    ", isActive=" + isActive +  // Include in toString
                    '}';
        }
    }
