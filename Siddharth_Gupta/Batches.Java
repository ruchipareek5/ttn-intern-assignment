import java.util.*;
import java.util.ArrayList;

public class Batches {
    private  int BatchID;
    private Date Start_Date;
    private Date End_Date;
    private String Batch_name;

    public int getBatchID() {
        return BatchID;
    }

    public void setBatchID(int batchID) {
        BatchID = batchID;
    }

    public String getBatch_name() {
        return Batch_name;
    }

    public void setBatch_name(String batch_name) {
        Batch_name = batch_name;
    }

    public Date getStart_Date() {
        return Start_Date;
    }

    public void setStart_Date(Date start_Date) {
        Start_Date = start_Date;
    }

    public Date getEnd_Date() {
        return End_Date;
    }

    public void setEnd_Date(Date end_Date) {
        End_Date = end_Date;
    }


    public static void main(String[] args) {
        Batches b1 =new Batches();
        Batches b2 =new Batches();
        Batches b3 =new Batches();
        Batches b4 =new Batches();
        Batches b5 =new Batches();
        Batches b6 =new Batches();
        Batches b7 =new Batches();
        Batches b8 =new Batches();
        Batches b9 =new Batches();
        Batches b10 =new Batches();
        b1.setBatchID(1);
        b1.setBatch_name("B1");
        b1.setStart_Date(2018-01-06);

        HashMap<Integer,Batches> map=new HashMap<Integer, Batches>();
        map.put(1,b1);
        map.put(2,b2);
        map.put(3,b3);
        map.put(4,b4);
        map.put(5,b5);
        map.put(6,b6);
        map.put(7,b7);
        map.put(8,b8);
        map.put(9,b9);
        map.put(10,b10);


    }


}
