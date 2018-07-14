import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

public class BatchJdbc {
    public static void main(String[] args) {
        List<Batch> batchList;
        try
        {
            batchList=new LinkedList<Batch>();
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttn_jdbc","root","tiger");
            PreparedStatement preparedStatement=con.prepareStatement("select  * from batch");
            ResultSet resultSet=preparedStatement.executeQuery();
            while(resultSet.next())
            {
                String batchId=resultSet.getString("batch_id");
                String batchName=resultSet.getString("batch_name");
                Batch.BatchType batchType=Batch.BatchType.valueOf(resultSet.getString("batch_type"));
                String trainingPartnerId=resultSet.getString("training_partner_id");
                int centreId=resultSet.getInt("centre_id");
                int trainerId=resultSet.getInt("trainer_id");
                int totalCandidatesInBatch=resultSet.getInt("total_candidates_in_batch");
                String batchMode=resultSet.getString("batch_mode");
                Date batchStartDate=resultSet.getDate("batch_start_date");
                Date batchEndDate=resultSet.getDate("batch_end_date");
                String jobRole=resultSet.getString("job_role");
                String jobRoleCode=resultSet.getString("job_role_code");
                float maximumMarksTheory=resultSet.getFloat("maximum_marks_theory");
                float maxmumMarksPractical=resultSet.getFloat("maximum_marks_practical");
                int level=resultSet.getInt("b_level");
                 Batch.ResultApproved resultApproved=Batch.ResultApproved.valueOf(resultSet.getString("result_approved"));
                Date resultApprovedOnDate=resultSet.getDate("result_approved_on_date");
                int totalPass=resultSet.getInt("total_pass");
                int totalFail=resultSet.getInt("total_fail");
                int totalNotAppeared=resultSet.getInt("total_not_appeared");
                int totalCertified=resultSet.getInt("total_certified");
                Date batchAssignmentDate=resultSet.getDate("batch_assignment_date");
                Date assessmentDate=resultSet.getDate("assessment_date");
                int agencyId=resultSet.getInt("agency_id");
                int assessorId=resultSet.getInt("assessor_id");

                batchList.add(new Batch(batchId,batchName,batchType,trainingPartnerId,centreId,trainerId,totalCandidatesInBatch,batchMode,batchStartDate,batchEndDate,jobRole,jobRoleCode,maximumMarksTheory,maxmumMarksPractical,level,resultApproved,resultApprovedOnDate,totalPass,totalFail,totalNotAppeared,totalCertified,batchAssignmentDate,assessmentDate,agencyId,assessorId));
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
