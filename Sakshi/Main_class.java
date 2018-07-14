import java.util.ArrayList;
import java.util.Date;

public class Main_class {
    public static void main(String[] args) {
        ArrayList<BatchDetails> bd = new ArrayList<>();

        Date sd1= new Date(2018,01,01);
        Date sd2= new Date(2017,12,15);
        Date sd3= new Date(2018,04,01);
        Date sd4= new Date(2018,03,01);
        Date sd5= new Date(2017,11,25);
        Date sd6= new Date(2017,11,15);
        Date sd7= new Date(2018,06,14);
        Date sd8= new Date(2018,01,06);
        Date sd9= new Date(2018,03,15);
        Date sd10= new Date(2017,10,01);

        Date ed1= new Date(2018,10,30);
        Date ed2= new Date(2018,02,15);
        Date ed3= new Date(2018,8,30);
        Date ed4= new Date(2018,05,30);
        Date ed5= new Date(2018,9,30);
        Date ed6= new Date(2018,05,15);
        Date ed7= new Date(2018,8,13);
        Date ed8= new Date(2018,06,30);
        Date ed9= new Date(2018,05,15);
        Date ed10= new Date(2018,01,30);


        bd.add(new BatchDetails(1,"solar",sd1,ed1,"A"));
        bd.add(new BatchDetails(2,"hydro",sd2,ed2,"B"));
        bd.add(new BatchDetails(3,"solar",sd3,ed3,"C"));
        bd.add(new BatchDetails(4,"solar",sd4,ed4,"D"));
        bd.add(new BatchDetails(5,"hydro",sd5,ed5,"E"));
        bd.add(new BatchDetails(6,"hydro",sd6,ed6,"F"));
        bd.add(new BatchDetails(7,"hydro",sd7,ed7,"G"));
        bd.add(new BatchDetails(8,"solar",sd8,ed8,"I"));
        bd.add(new BatchDetails(9,"solar",sd9,ed9,"J"));
        bd.add(new BatchDetails(10,"hydro",sd10,ed10,"K"));

        Date d=new Date(2018,07,14);
        bd.stream()
                .filter(p ->p.start_date> d)
                .filter(p ->p.end_date< d)
                .map(pm ->pm.bd)          
                .forEach(System.out::println);  
    }
}
}
