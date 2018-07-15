import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

public class Main {

    public static void main(String[] args) {



        List<Batch> batchList;
        try
        {
            batchList=new LinkedList<Batch>();
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttn_Exercise_1","root","*******");
            PreparedStatement preparedStatement=con.prepareStatement("select  * from batches");
            ResultSet resultSet=preparedStatement.executeQuery();
            while(resultSet.next())
            {
                int batchId=resultSet.getInt("batch_id");
                String batchName=resultSet.getString("batch_name");
                int totalCandidatesInBatch=resultSet.getInt("total_candidates_in_batch");
                Date batchStartDate=resultSet.getDate("batch_start_date");
                Date batchEndDate=resultSet.getDate("batch_end_date");




                batchList.add(new Batch(batchId,batchName,totalCandidatesInBatch,batchStartDate,batchEndDate));
            }
            System.out.println("All Batches: "+batchList);


            List<Batch> pastBatchList=batchList.stream().filter(x->x.getBatchEndDate().compareTo(new Date())<0).collect(Collectors.toList());
            HashMap<String,List<Batch>>batchMap=new HashMap<>();
            batchMap.put("Past Batches",pastBatchList);

            List<Batch> presentBatchList=batchList.stream().filter(x->x.getBatchEndDate().compareTo(new Date())>0).collect(Collectors.toList());
            batchMap.put("Present batches",presentBatchList);

            batchMap.forEach((x,y)->{System.out.println(x);
                y.forEach(z->System.out.println(z));
            });

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

    }
}