import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Test {
    public static void main(String[] args) {


        tp_BatchDetails tp1 = new tp_BatchDetails(1, "Solar", new Date(118, 01, 01),
                new Date(118, 9, 01), 30, false);

        tp_BatchDetails tp2 = new tp_BatchDetails(2, "Waste Picker", new Date(118, 02, 02),
                new Date(118, 10, 02), 40, false);

        tp_BatchDetails tp3 = new tp_BatchDetails(3, "Solar PV", new Date(117, 02, 02),
                new Date(117, 03, 02), 25, true);

        tp_BatchDetails tp4 = new tp_BatchDetails(4, "Water Management", new Date(118, 04, 02),
                new Date(118, 06, 02), 20, false);

        tp_BatchDetails tp5 = new tp_BatchDetails(5, "Solar Installer", new Date(118, 04, 02),
                new Date(118, 05, 02), 60, true);


        tp_BatchDetails tp6 = new tp_BatchDetails(6, "Solar", new Date(116, 01, 01),
                new Date(116, 02, 01), 10, true);

        tp_BatchDetails tp7 = new tp_BatchDetails(7, "Waste Picker", new Date(116, 02, 02),
                new Date(116, 03, 02), 15, true);

        tp_BatchDetails tp8 = new tp_BatchDetails(8, "Solar PV", new Date(116, 02, 02),
                new Date(116, 03, 02), 25, true);

        tp_BatchDetails tp9 = new tp_BatchDetails(9, "Water Management", new Date(116, 04, 02),
                new Date(116, 06, 02), 50, true);

        tp_BatchDetails tp10 = new tp_BatchDetails(10, "Solar Installer", new Date(116, 04, 02),
                new Date(116, 05, 02), 60, true);

        ArrayList<tp_BatchDetails> tp_bd = new ArrayList<tp_BatchDetails>();

        tp_bd.add(tp1);
        tp_bd.add(tp2);
        tp_bd.add(tp3);
        tp_bd.add(tp4);
        tp_bd.add(tp5);
        tp_bd.add(tp6);
        tp_bd.add(tp7);
        tp_bd.add(tp8);
        tp_bd.add(tp9);
        tp_bd.add(tp10);

//        System.out.println(new Date());
//        System.out.println(tpd1.getEndDate());
//        System.out.println(tpd1.getEndDate().compareTo(new Date()));



        Stream<tp_BatchDetails> forFiletering = tp_bd.stream();
      List<tp_BatchDetails> pastBatches= forFiletering.filter(endDate -> (endDate.getEndDate().compareTo(new Date(118,1,1)))<0).collect(Collectors.toList());


      HashMap<String,List<tp_BatchDetails>>batchMap =new HashMap<>();

        batchMap.put("past batches",pastBatches);
       // batchMap.put("present batches",presentBatches);

        batchMap.forEach((x,y)->{

            System.out.println(x);

            y.forEach(z->{
                System.out.println(z);
            });
        });

        Stream<tp_BatchDetails> forFiletering1 = tp_bd.stream();
        List<tp_BatchDetails> presentBatches= forFiletering1.filter(endDate -> (endDate.getEndDate().compareTo(new Date(118,1,1)))>0).collect(Collectors.toList());
        //batchMap.put("past batches",pastBatches);
        batchMap.put("present batches",presentBatches);

        batchMap.forEach((x,y)->{

            System.out.println(x);

            y.forEach(z->{
                System.out.println(z);
            });
        });
        }


}
