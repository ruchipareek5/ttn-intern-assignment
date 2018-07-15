import java.time.LocalDate;

public class Batch {
    private int id;
    private LocalDate batchStartDate;
    private LocalDate batchEndDate;

    public Batch(int id, LocalDate batchStartDate, LocalDate batchEndDate)
    {
        this.id=id;
        this.batchStartDate=batchStartDate;
        this.batchEndDate=batchEndDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public LocalDate getBatchStartDate() {
        return batchStartDate;
    }

    public void setBatchStartDate(LocalDate batchStartDate) {
        this.batchStartDate = batchStartDate;
    }

    public LocalDate getBatchEndDate() {
        return batchEndDate;
    }

    public void setBatchEndDate(LocalDate batchEndDate) {
        this.batchEndDate = batchEndDate;
    }
    
    public boolean isPresentBatch() {
        if(this.batchEndDate.isBefore(LocalDate.now())) {
            return false;
        }
        return true;
    }
}