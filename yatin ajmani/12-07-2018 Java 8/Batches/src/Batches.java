import java.util.Date;

public class Batches {
    int batch_id;
    String name;
    Date start_date;
    Date end_date;
    String training_name;

    public Batches(int batch_id, String name, Date start_date, Date end_date, String training_name) {
        this.batch_id = batch_id;
        this.name = name;
        this.start_date = start_date;
        this.end_date = end_date;
        this.training_name = training_name;
    }

    public int getBatch_id() {
        return batch_id;
    }

    public void setBatch_id(int batch_id) {
        this.batch_id = batch_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getStart_date() {
        return start_date;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }

    public String getTraining_name() {
        return training_name;
    }

    public void setTraining_name(String training_name) {
        this.training_name = training_name;
    }

    public static void main(String[] args) {
    }
}
