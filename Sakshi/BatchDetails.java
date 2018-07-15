import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Date;

public class BatchDetails {
    int Batch_id;
    String QP;
    Date start_date;
    Date end_date;
    String Training_Partner_Name;

    public BatchDetails(int batch_id, String QP, Date start_date, Date end_date, String training_Partner_Name) {
        Batch_id = batch_id;
        this.QP = QP;
        this.start_date = start_date;
        this.end_date = end_date;
        Training_Partner_Name = training_Partner_Name;
    }




    }
