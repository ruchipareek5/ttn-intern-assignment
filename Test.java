import java.util.*;

import static java.util.stream.Collectors.toMap;

class TrainingPartnerDetails {
    public int id;
    public String name;
    public String date;

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDate() {
        return date;
    }

}
public class Test{
    public static void main(String args[]){
        List stu= new ArrayList();
        TrainingPartnerDetails st1= new TrainingPartnerDetails();
        st1.setId(101);
        st1.setName("Trainers will pvt. ltd.");
        st1.setDate("12/07/2017");

        TrainingPartnerDetails st2= new TrainingPartnerDetails();
        st2.setId(102);
        st2.setName("Trainers and associates pvt. ltd.");
        st2.setDate("01/07/2017");

        TrainingPartnerDetails st3= new TrainingPartnerDetails();
        st3.setId(103);
        st3.setName("Trainers and associates pvt. ltd.");
        st3.setDate("01/07/2017");

        TrainingPartnerDetails st4= new TrainingPartnerDetails();
        st4.setId(104);
        st4.setName("Trainers and associates pvt. ltd.");
        st4.setDate("01/09/2017");

        TrainingPartnerDetails st5= new TrainingPartnerDetails();
        st5.setId(105);
        st5.setName("Centum Workskills India ltd.");
        st5.setDate("01/02/2018");

        TrainingPartnerDetails st6= new TrainingPartnerDetails();
        st6.setId(106);
        st6.setName("Indianeye Security pvt. ltd.");
        st6.setDate("01/12/2017");

        TrainingPartnerDetails st7= new TrainingPartnerDetails();
        st7.setId(107);
        st7.setName("Darshan Institute pvt. ltd.");
        st7.setDate("01/02/2018");

        TrainingPartnerDetails st8= new TrainingPartnerDetails();
        st8.setId(108);
        st8.setName("SR corporate consultants pvt. ltd.");
        st8.setDate("01/05/2018");

        TrainingPartnerDetails st9= new TrainingPartnerDetails();
        st9.setId(109);
        st9.setName("Solar systems trainers ltd.");
        st9.setDate("01/07/2015");

        TrainingPartnerDetails st10= new TrainingPartnerDetails();
        st10.setId(110);
        st10.setName("Trainers and skills Foundation");
        st10.setDate("30/06/2018");

        stu.add(st1);
        stu.add(st2);
        stu.add(st3);
        stu.add(st4);
        stu.add(st5);
        stu.add(st6);
        stu.add(st7);
        stu.add(st8);
        stu.add(st9);
        stu.add(st10);

        ListIterator listItr =(ListIterator)stu.listIterator();
        while(listItr.hasNext()){
            TrainingPartnerDetails stud =(TrainingPartnerDetails)listItr.next();
            System.out.print(" "+stud.getId());
            System.out.print(" "+stud.getName());
            System.out.println(" "+stud.getDate());
        }

        Map<String, Object> map = new HashMap<String, Object>();
        for (Object str : stu)
        { map.put(stu.toString(), stu); }
        for (Map.Entry<String,Object> entry : map.entrySet())
            System.out.println(map);
        }
    }

