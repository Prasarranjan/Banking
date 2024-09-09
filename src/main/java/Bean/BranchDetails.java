package Bean;

public class BranchDetails {

        private int branchId;
        private String branchName;
        private String location;
        private String createdDate;
        private String createdBy;
        private String updatedDate;
        private String updatedBy;
        private boolean isActive;
        private int bankId;
    public String getBankImg() {
        return bankImg;
    }

    public void setBankImg(String bankImg) {
        this.bankImg = bankImg;
    }

    private String bankImg;

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName;
    }

    public String getBankAddress() {
        return bankAddress;
    }

    public void setBankAddress(String bankAddress) {
        this.bankAddress = bankAddress;
    }

    private String bankName;
        private String bankAddress;

        // Getters and Setters
        public int getBranchId() {
            return branchId;
        }

        public void setBranchId(int branchId) {
            this.branchId = branchId;
        }

        public String getBranchName() {
            return branchName;
        }

        public void setBranchName(String branchName) {
            this.branchName = branchName;
        }

        public String getLocation() {
            return location;
        }

        public void setLocation(String location) {
            this.location = location;
        }

        public String getCreatedDate() {
            return createdDate;
        }

        public void setCreatedDate(String createdDate) {
            this.createdDate = createdDate;
        }

        public String getCreatedBy() {
            return createdBy;
        }

        public void setCreatedBy(String createdBy) {
            this.createdBy = createdBy;
        }

        public String getUpdatedDate() {
            return updatedDate;
        }

        public void setUpdatedDate(String updatedDate) {
            this.updatedDate = updatedDate;
        }

        public String getUpdatedBy() {
            return updatedBy;
        }

        public void setUpdatedBy(String updatedBy) {
            this.updatedBy = updatedBy;
        }

        public boolean isActive() {
            return isActive;
        }

        public void setActive(boolean isActive) {
            this.isActive = isActive;
        }

        public int getBankId() {
            return bankId;
        }

        public void setBankId(int bankId) {
            this.bankId = bankId;
        }

        @Override
        public String toString() {
            return "Branch{" +
                    "branchId=" + branchId +
                    ", branchName='" + branchName + '\'' +
                    ", location='" + location + '\'' +
                    ", createdDate='" + createdDate + '\'' +
                    ", createdBy='" + createdBy + '\'' +
                    ", updatedDate='" + updatedDate + '\'' +
                    ", updatedBy='" + updatedBy + '\'' +
                    ", isActive=" + isActive +
                    ", bankId=" + bankId +
                    '}';
        }
    }


