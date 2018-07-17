import java.util.Date;

public class tp_BatchDetails {

    private  int batchID;
    private  String QP_of_batch;
    private Date startDate;
    private Date endDate;

    @Override
    public String toString() {
        return "tp_BatchDetails{" +
                "batchID=" + batchID +
                ", QP_of_batch='" + QP_of_batch + '\'' +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", number_of_candidate=" + number_of_candidate +
                ", assesed=" + assesed +
                '}';
    }

    private int number_of_candidate;
    private boolean assesed = false;

    public tp_BatchDetails(int batchID, String QP_of_batch, Date startDate, Date endDate, int number_of_candidate, boolean assesed) {
        this.batchID = batchID;
        this.QP_of_batch = QP_of_batch;
        this.startDate = startDate;
        this.endDate = endDate;
        this.number_of_candidate = number_of_candidate;
        this.assesed = assesed;
    }


    public int getBatchID()
    {
        return batchID;
    }

    public void setBatchID(int batchID)
    {
        this.batchID = batchID;
    }

    public String getQP_of_batch()
    {
        return QP_of_batch;
    }

    public void setQP_of_batch(String QP_of_batch)
    {
        this.QP_of_batch = QP_of_batch;
    }

    public Date getStartDate()
    {
        return startDate;
    }

    public void setStartDate(Date startDate)
    {
        this.startDate = startDate;
    }

    public Date getEndDate()
    {
        return endDate;
    }

    public void setEndDate(Date endDate)
    {
        this.endDate = endDate;
    }

    public int getNumber_of_candidate()
    {
        return number_of_candidate;
    }

    public void setNumber_of_candidate(int number_of_candidate)
    {
        this.number_of_candidate = number_of_candidate;
    }

    public boolean isAssesed()
    {
        return assesed;
    }

    public void setAssesed(boolean assesed) {
        this.assesed = assesed;
    }
}
