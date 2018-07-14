import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class BatchApplication {
    public static void main(String[] args) {
        ArrayList<Batches> b=new ArrayList<>();

        Calendar cal = Calendar.getInstance();
        cal.set(2018, 8, 8);

        b.add(new Batches(1,"b1",new Date(),cal.getTime(),"bla"));
        b.add(new Batches(2,"b2",new Date(),new Date(),"bla"));
        b.add(new Batches(3,"b3",new Date(),new Date(),"bla"));
        b.add(new Batches(4,"b4",new Date(),new Date(),"bla"));
        b.add(new Batches(5,"b5",new Date(),new Date(),"bla"));
        b.add(new Batches(6,"b6",new Date(),new Date(),"bla"));
        b.add(new Batches(7,"b7",new Date(),new Date(),"bla"));
        b.add(new Batches(8,"b8",new Date(),new Date(),"bla"));
        b.add(new Batches(9,"b9",new Date(),new Date(),"bla"));
        b.add(new Batches(10,"b10",new Date(),cal.getTime(),"bla"));
        for(Batches b1:b)
            System.out.println(b1);

        b.stream().filter(e->{
            if(e.getEnd_date().before(new Date()))
                    return true;
            return false;
        }).forEach(System.out::println);

        List<String> x=b.stream().map(e->{
            if(e.getEnd_date().before(new Date()))
                return e.getName()+" is Past Batch";
            return e.getName()+" is Present Batch";
        }).collect(Collectors.toList());

        for(String s:x)
            System.out.println(s);

    }
}
