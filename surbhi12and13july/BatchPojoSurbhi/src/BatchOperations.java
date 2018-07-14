import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

public class BatchOperations {
    public static void main(String[] args) {
        Batch b1=new Batch("400899","Batch1",Batch.BatchType.PMKVY,
                "NSDC-REGNo-14405",97632,1,30,
                "MM",new Date(118,1,27),new Date(118,5, 28),"Rooftop Solar Grid Engineer", "1",60,40,2,
                Batch.ResultApproved.NO,new Date(118,06,01),20,10,0,15,
                new Date(117,9,12), new Date(118,9,05),1,2);

        Batch b2=new Batch("400899","Batch2",Batch.BatchType.PMKVY,
                "NSDC-REGNo-14405",97632,1,30,
                "MM",new Date(118,8,27),new Date(118,11,
                28),"Rooftop Solar Grid Engineer", "1",60,40,2,
                Batch.ResultApproved.NO,new Date(118,06,01),20,10,0,15,
                new Date(117,9,12), new Date(118,9,05),1,2);
        Batch b3=new Batch("400899","Batch3",Batch.BatchType.PMKVY,
                "NSDC-REGNo-14405",97632,1,30,
                "MM",new Date(118,4,27),new Date(118,8,
                28),"Rooftop Solar Grid Engineer", "1",60,40,2,
                Batch.ResultApproved.NO,new Date(118,06,01),20,10,0,15,
                new Date(117,9,12), new Date(118,9,05),1,2);
        Batch b4=new Batch("400899","Batch4",Batch.BatchType.PMKVY,
                "NSDC-REGNo-14405",97632,1,30,
                "MM",new Date(116,1,27),new Date(118,5,
                28),"Rooftop Solar Grid Engineer", "1",60,40,2,
                Batch.ResultApproved.NO,new Date(118,06,01),20,10,0,15,
                new Date(117,9,12), new Date(118,9,05),1,2);
        Batch b5=new Batch("400899","Batch5",Batch.BatchType.PMKVY,
                "NSDC-REGNo-14405",97632,1,30,
                "MM",new Date(2019,2,27),new Date(118,5,
                28),"Rooftop Solar Grid Engineer", "1",60,40,2,
                Batch.ResultApproved.NO,new Date(118,06,01),20,10,0,15,
                new Date(117,9,12), new Date(118,9,05),1,2);
        Batch b6=new Batch("400899","Batch6",Batch.BatchType.PMKVY,
                "NSDC-REGNo-14405",97632,1,30,
                "MM",new Date(118,10,27),new Date(118,5,
                28),"Rooftop Solar Grid Engineer", "1",60,40,2,
                Batch.ResultApproved.NO,new Date(118,06,01),20,10,0,15,
                new Date(117,9,12), new Date(118,9,05),1,2);
        Batch b7=new Batch("400899","Batch7",Batch.BatchType.PMKVY,
                "NSDC-REGNo-14405",97632,1,30,
                "MM",new Date(118,1,27),new Date(118,5,
                28),"Rooftop Solar Grid Engineer", "1",60,40,2,
                Batch.ResultApproved.NO,new Date(118,06,01),20,10,0,15,
                new Date(117,9,12), new Date(118,9,05),1,2);
        Batch b8=new Batch("400899","Batch8",Batch.BatchType.PMKVY,
                "NSDC-REGNo-14405",97632,1,30,
                "MM",new Date(118,8,24),new Date(118,5,
                28),"Rooftop Solar Grid Engineer", "1",60,40,2,
                Batch.ResultApproved.NO,new Date(118,06,01),20,10,0,15,
                new Date(117,9,12), new Date(118,9,05),1,2);
        Batch b9=new Batch("400899","Batch 9",Batch.BatchType.PMKVY,
                "NSDC-REGNo-14405",97632,1,30,
                "MM",new Date(118,1,27),new Date(117,5,
                28),"Rooftop Solar Grid Engineer", "1",60,40,2,
                Batch.ResultApproved.NO,new Date(118,06,01),20,10,0,15,
                new Date(117,9,12), new Date(118,9,05),1,2);
        Batch b10=new Batch("400899","Batch10",Batch.BatchType.PMKVY,
                "NSDC-REGNo-14405",97632,1,30,
                "MM",new Date(117,5,27),new Date(117,5,
                28),"Rooftop Solar Grid Engineer", "1",60,40,2,
                Batch.ResultApproved.NO,new Date(118,06,01),20,10,0,15,
                new Date(117,9,12), new Date(118,9,05),1,2);

        List<Batch>batchList=new ArrayList<>();
        batchList.add(b1);
        batchList.add(b2);
        batchList.add(b3);
        batchList.add(b4);
        batchList.add(b5);
        batchList.add(b6);
        batchList.add(b7);
        batchList.add(b8);
        batchList.add(b9);
        batchList.add(b10);
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy/MM/dd");
        LocalDate localDate=LocalDate.now();
//        System.out.println(new Date(118,05,1));
//        System.out.println(new Date());
//        System.out.println(batchList.get(9).getBatchEndDate());
//        System.out.println(batchList.get(9).getBatchEndDate().before(new Date()));
//        System.out.println(batchList.get(9).getBatchEndDate().compareTo(new Date()));
        List<Batch> pastBatchList=batchList.stream().filter(x->x.getBatchEndDate().compareTo(new Date())<0).collect(Collectors.toList());
        HashMap<String,List<Batch>>batchMap=new HashMap<>();
        batchMap.put("Past Batches",pastBatchList);

        List<Batch> presentBatchList=batchList.stream().filter(x->x.getBatchEndDate().compareTo(new Date())>0).collect(Collectors.toList());
        batchMap.put("Present batches",presentBatchList);

        batchMap.forEach((x,y)->{System.out.println(x);
        y.forEach(z->System.out.println(z));
        });


    }
}
