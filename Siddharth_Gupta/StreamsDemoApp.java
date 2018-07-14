import java.util.ArrayList;

class Person{
    String name;
    int age;
    enum gender{male,female,others}
    gender m=gender.male;
    gender f=gender.female;
    gender o=gender.others;

}

public class StreamsDemoApp {
    public static void main(String[] args) {
        Person p1=new Person();
        Person p2=new Person();
        Person p3=new Person();
        Person p4=new Person();
        Person p5=new Person();
        Person p6=new Person();
        Person p7=new Person();
        Person p8=new Person();
        Person p9=new Person();
        Person p10=new Person();

        ArrayList<Person> list=new ArrayList<Person>();
        list.add(p1);
        list.add(p2);
        list.add(p3);
        list.add(p4);
        list.add(p5);
        list.add(p6);
        list.add(p7);
        list.add(p8);
        list.add(p9);
        list.add(p10);

        for(Person pp : list) pp.age -= 2;

    }
}
