package Bean;

public class userDetails {
        private String custFname;
        private String custLname;
        private String bankName;
        private String branchName;
        private String ifscCode;
        private double balance;
        private String custAddress;
        private String custEmail;
        private String custPhone;
        private String custDOB;
        private String accTypeName;
        private String acNumber;
        private String openingDate;

        // Getters and Setters

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

        public String getBankName() {
            return bankName;
        }

        public void setBankName(String bankName) {
            this.bankName = bankName;
        }

        public String getBranchName() {
            return branchName;
        }

        public void setBranchName(String branchName) {
            this.branchName = branchName;
        }

        public String getIfscCode() {
            return ifscCode;
        }

        public void setIfscCode(String ifscCode) {
            this.ifscCode = ifscCode;
        }

        public double getBalance() {
            return balance;
        }

        public void setBalance(double balance) {
            this.balance = balance;
        }

        public String getCustAddress() {
            return custAddress;
        }

        public void setCustAddress(String custAddress) {
            this.custAddress = custAddress;
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

        public String getCustDOB() {
            return custDOB;
        }

        public void setCustDOB(String custDOB) {
            this.custDOB = custDOB;
        }

        public String getAccTypeName() {
            return accTypeName;
        }

        public void setAccTypeName(String accTypeName) {
            this.accTypeName = accTypeName;
        }

        public String getAcNumber() {
            return acNumber;
        }

        public void setAcNumber(String acNumber) {
            this.acNumber = acNumber;
        }

        public String getOpeningDate() {
            return openingDate;
        }

        public void setOpeningDate(String openingDate) {
            this.openingDate = openingDate;
        }

        // toString method
        @Override
        public String toString() {
            return "CustomerDetails{" +
                    "custFname='" + custFname + '\'' +
                    ", custLname='" + custLname + '\'' +
                    ", bankName='" + bankName + '\'' +
                    ", branchName='" + branchName + '\'' +
                    ", ifscCode='" + ifscCode + '\'' +
                    ", balance=" + balance +
                    ", custAddress='" + custAddress + '\'' +
                    ", custEmail='" + custEmail + '\'' +
                    ", custPhone='" + custPhone + '\'' +
                    ", custDOB='" + custDOB + '\'' +
                    ", accTypeName='" + accTypeName + '\'' +
                    ", acNumber='" + acNumber + '\'' +
                    ", openingDate='" + openingDate + '\'' +
                    '}';
        }
    }


