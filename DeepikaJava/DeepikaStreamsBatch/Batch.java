import java.util.Date;

public class Batch {
    String batchID;
    int numOfStudents;
    String qualificationPack;
    boolean isRunning;
    Date endDate;

    public Batch(String batchID, int numOfStudents, String qualificationPack, boolean isRunning) {
        this.batchID = batchID;
        this.numOfStudents = numOfStudents;
        this.qualificationPack = qualificationPack;
        this.isRunning = isRunning;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public void getBatch() {
        System.out.println("Batch ID: " + batchID + ", End date: " + endDate + ", isRunning: " + isRunning);
    }
}
