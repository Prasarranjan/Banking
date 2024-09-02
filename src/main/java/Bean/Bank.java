package Bean;

public class Bank {

        private int bankId;
        private String  bankName ;
        private String  bankEmail ;
        private String  bankPhone ;
        private String  bankImg ;
        public String getBankImg() {
            return bankImg;
        }
        public void setBankImg(String bankImg) {
            this.bankImg = bankImg;
        }
        public int getBankId() {
            return bankId;
        }
        public void setBankId(int bankId) {
            this.bankId = bankId;
        }
        public String getBankName() {
            return bankName;
        }
        public void setBankName(String bankName) {
            this.bankName = bankName;
        }
        public String getBankEmail() {
            return bankEmail;
        }
        public void setBankEmail(String bankEmail) {
            this.bankEmail = bankEmail;
        }
        public String getBankPhone() {
            return bankPhone;
        }
        public void setBankPhone(String bankPhone) {
            this.bankPhone = bankPhone;
        }
        @Override
        public String toString() {
            return "Bank [bankId=" + bankId + ", bankName=" + bankName + ", bankEmail=" + bankEmail + ", bankPhone="
                    + bankPhone + ", bankImg=" + bankImg + "]";
        }


    }


