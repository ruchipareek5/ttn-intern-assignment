import java.util.Date;

public class Batch {


    private int batchId;
    private String batchName;
    private int totalCandidatesInBatch;
    private Date batchStartDate;
    private Date batchEndDate;

    public Batch(int batchId, String batchName, int totalCandidatesInBatch, Date batchStartDate, Date batchEndDate) {
        this.batchId = batchId;
        this.batchName = batchName;
        this.totalCandidatesInBatch = totalCandidatesInBatch;
        this.batchStartDate = batchStartDate;
        this.batchEndDate = batchEndDate;
    }

    public int getBatchId() {
        return batchId;
    }

    public void setBatchId(int batchId) {
        this.batchId = batchId;
    }

    public String getBatchName() {
        return batchName;
    }

    public void setBatchName(String batchName) {
        this.batchName = batchName;
    }

    public int getTotalCandidatesInBatch() {
        return totalCandidatesInBatch;
    }

    public void setTotalCandidatesInBatch(int totalCandidatesInBatch) {
        this.totalCandidatesInBatch = totalCandidatesInBatch;
    }

    public Date getBatchStartDate() {
        return batchStartDate;
    }

    public void setBatchStartDate(Date batchStartDate) {
        this.batchStartDate = batchStartDate;
    }

    public Date getBatchEndDate() {
        return batchEndDate;
    }

    public void setBatchEndDate(Date batchEndDate) {
        this.batchEndDate = batchEndDate;
    }

    @Override
    public String toString() {
        return "Batch{" +
                "batchId='" + batchId + '\'' +
                ", batchName='" + batchName + '\'' +
                ", totalCandidatesInBatch=" + totalCandidatesInBatch +
                ", batchStartDate=" + batchStartDate +
                ", batchEndDate=" + batchEndDate +
                '}';
    }

}