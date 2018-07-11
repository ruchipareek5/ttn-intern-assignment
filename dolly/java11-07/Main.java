import java.util.*;

public class Main {
     static int d;
    public static void main(String[] args) {


        ArrayList<Interns> arr = new ArrayList<>();
        Interns i1=new Interns("dolly",1,25);
        Interns i2=new Interns("ayushi",2,30);
        Interns i3=new Interns("aaa",3,35);
        Interns i4=new Interns("bbb",4,40);
        Interns i5=new Interns("ccc",5,45);
        Interns i6=new Interns("ddd",6,50);
        Interns i7=new Interns("eee",7,55);

        arr.add(i1);
        arr.add(i2);
        arr.add(i3);
        arr.add(i4);
        arr.add(i5);
        arr.add(i6);
        arr.add(i7);
        int size=arr.size();
        for(Interns ob : arr )
        {
            System.out.println(ob.getId()+" "+ob.getName()+" "+ob.getScore());
        }
        int max=i1.getScore();
        for(Interns i:arr)
        {
            if(i.getScore()>max) max=i.getScore();
            {
                d =i.getId();
            }
        }
        for(Interns n:arr)
        {
            if(n.getId()==d)
            {

                String name=n.getName()+"###";
                n.setName(name);
                System.out.println("Changed name of "+n.getId()+" is:"+n.getName());
            }
        }
        Interns i8=new Interns("fff",8,60);
        Interns i9=new Interns("ggg",9,65);
        arr.add(3,i8);
        arr.add(5,i9);
        float sum=0;
        for(Interns ob : arr )
        {
         sum+=ob.getScore();
        }
        float avg=sum/size;
        System.out.println("Average is:"+avg);
        System.out.println("Final List");
        for(Interns ob : arr )
        {
            System.out.println(ob.getId()+" "+ob.getName()+" "+ob.getScore());
        }


    }
}
