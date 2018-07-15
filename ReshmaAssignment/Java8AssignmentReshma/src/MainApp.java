import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.stream.Collectors;

public class MainApp {
    public static void main(String[] args) {
        Batch b1 = new Batch("B0123","QP0101",123,"TP01",30,new Date(118,11,12),new Date(119,1,13));
        Batch b2 = new Batch("B0111","QP0102",123,"TP02",30,new Date(117,11,12),new Date(118,1,13));
        Batch b3 = new Batch("B0222","QP0103",123,"TP03",30,new Date(115,5,1),new Date(115,8,12));
        Batch b4 = new Batch("B0333","QP0104",123,"TP01",30,new Date(114,7,10),new Date(114,9,10));
        Batch b5 = new Batch("B0443","QP0105",123,"TP02",30,new Date(117,3,12),new Date(117,4,13));
        Batch b6 = new Batch("B0555","QP0106",123,"TP03",30,new Date(118,4,2),new Date(118,5,10));
        Batch b7 = new Batch("B0666","QP0107",123,"TP01",30,new Date(116,3,22),new Date(116,4,22));
        Batch b8 = new Batch("B0777","QP0108",123,"TP03",30,new Date(117,2,2),new Date(117,3,2));
        Batch b9 = new Batch("B0888","QP0109",123,"TP02",30,new Date(112,4,10),new Date(112,6,10));
        Batch b10 = new Batch("B0999","QP0110",123,"TP04",30,new Date(116,1,12),new Date(116,3,12));

        ArrayList<Batch> arrayList = new ArrayList<>();

        arrayList.add(b1);
        arrayList.add(b2);
        arrayList.add(b3);
        arrayList.add(b4);
        arrayList.add(b5);
        arrayList.add(b6);
        arrayList.add(b7);
        arrayList.add(b8);
        arrayList.add(b9);
        arrayList.add(b10);
        Date today = new Date();
        HashMap<String,ArrayList<Batch>> hashMap = new HashMap<>();
        ArrayList currentBatches = arrayList.stream()
                .filter(d -> d.getBatchEndDate().compareTo(today) > 0)
                .collect(Collectors.toList());

        hashMap.put("Current Batches",currentBatches );

        hashMap.forEach((x,y)->{System.out.println(x);
            y.forEach(z->System.out.println(z));
        });


    }
}
