import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.stream.Collector;
import java.util.stream.Collectors;

public class Main {
    public static void main(String[] args) {
        Date d=new Date(20-01-2018);
        Date d1=new Date(30-07-2018);
        Date d2=new Date(11-01-2017);
        Date d3=new Date(25-01-2018);
        Date d4=new Date(11-07-2017);
        Date d5=new Date(11-01-2017);
        Batch b1 = new Batch(1,"batch1",d4,d);
        Batch b2 = new Batch(2,"batch1",d2,d);
        Batch b3 = new Batch(3,"batch1",d5,d1);
        Batch b4 = new Batch(4,"batch1",d4,d1);
        Batch b5 = new Batch(5,"batch1",d2,d3);
        Batch b6 = new Batch(6,"batch1",d5,d3);
        Batch b7 = new Batch(7,"batch1",d5,d);
        Batch b8 = new Batch(8,"batch1",d2,d1);
        Batch b9 = new Batch(9,"batch1",d4,d1);
        Batch b10 = new Batch(10,"batch1",d5,d3);
        List list=new ArrayList();
        list.add(b1);
        list.add(b2);
        list.add(b3);
        list.add(b4);
        list.add(b5);
        list.add(b6);
        list.add(b7);
        list.add(b8);
        list.add(b9);
        list.add(b10);


        List<Batch> batch = list.stream().filter(Batch->Batch.startdate>curdate()).collect(Collectors.toList());
        List<Batch> batch = list.stream().filter(Batch->Batch.startdate<curdate()).collect(Collectors.toList());

        ArrayList<Integer> arrayList = new ArrayList<>();
        for(int i = 1; i <= 100;i++) arrayList.add(i);

        arrayList.stream().filter(l -> l > 90).forEach(l -> System.out.println(l));

        arrayList.parallelStream().filter(l -> l > 90).forEach(l -> System.out.println(l));

    }
}
