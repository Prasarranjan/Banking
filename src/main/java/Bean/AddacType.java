package Bean;

public class AddacType {
    private int accTypeId;
    private String accTypeName;

    // Default constructor
    public AddacType() {
    }

    // Parameterized constructor
    public AddacType(int accTypeId, String accTypeName) {
        this.accTypeId = accTypeId;
        this.accTypeName = accTypeName;
    }

    // Getter for accTypeId
    public int getAccTypeId() {
        return accTypeId;
    }

    // Setter for accTypeId
    public void setAccTypeId(int accTypeId) {
        this.accTypeId = accTypeId;
    }

    // Getter for accTypeName
    public String getAccTypeName() {
        return accTypeName;
    }

    // Setter for accTypeName
    public void setAccTypeName(String accTypeName) {
        this.accTypeName = accTypeName;
    }
}
