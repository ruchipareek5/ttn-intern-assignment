import java.util.Date;

public class Batch {

    private String batchId;
    private String batchName;
    private int trainingCentreId;
    private String trainerId;
    private int totalCandidatesInBatch;
    private Date batchStartDate;
    private Date batchEndDate;


    public Batch(String batchId, String batchName, int trainingCentreId, String trainerId, int totalCandidatesInBatch, Date batchStartDate, Date batchEndDate) {
        this.batchId = batchId;
        this.batchName = batchName;
        this.trainingCentreId = trainingCentreId;
        this.trainerId = trainerId;
        this.totalCandidatesInBatch = totalCandidatesInBatch;
        this.batchStartDate = batchStartDate;
        this.batchEndDate = batchEndDate;

    }

    public String getBatchId() {
        return batchId;
    }

    public void setBatchId(String batchId) {
        this.batchId = batchId;
    }

    public String getBatchName() {
        return batchName;
    }

    public void setBatchName(String batchName) {
        this.batchName = batchName;
    }

    public int getTrainingCentreId() {
        return trainingCentreId;
    }

    public void setTrainingCentreId(int trainingCentreId) {
        this.trainingCentreId = trainingCentreId;
    }

    public String getTrainerId() {
        return trainerId;
    }

    public void setTrainerId(String trainerId) {
        this.trainerId = trainerId;
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

}
