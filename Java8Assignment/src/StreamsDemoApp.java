import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class StreamsDemoApp {
    public static void main(String[] args) {
        Person p1 = new Person("souvik", 24, Gender.male);
        Person p2 = new Person("subham", 21, Gender.male);
        Person p3 = new Person("manju", 32, Gender.female);
        Person p4 = new Person("deepika", 24, Gender.female);
        Person p5 = new Person("deepshikha", 25, Gender.female);
        Person p6 = new Person("deepak", 24, Gender.male);
        Person p7 = new Person("dhruv", 21, Gender.male);
        Person p8 = new Person("ayushi", 23, Gender.female);
        Person p9 = new Person("rajesh", 25, Gender.male);
        Person p10 = new Person("rakesh", 27, Gender.male);
        List<Person> list = Arrays.asList(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
        System.out.println(list);
        /*Decreasing the age of person by 2 years*/
        List<Person> newList=list.stream().map(temp ->{
            Person person=new Person();
            person.setName(temp.getName());
            person.setAge(temp.getAge()-2);
            person.setGender(temp.getGender());
            return person;
        }).collect(Collectors.toList());
        System.out.println(newList);
        //creating a new list of person whose gender is female
        List <Person> newList1=list.stream().filter(p->p.gender==Gender.female).collect(Collectors.toList());
        System.out.println(newList1);
    }
}
