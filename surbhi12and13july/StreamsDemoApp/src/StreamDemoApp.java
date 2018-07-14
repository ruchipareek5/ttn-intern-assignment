import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StreamDemoApp {
    public static void main(String...args)
    {
        List<Person> personList=new LinkedList<Person>();
        personList.add(new Person("surbhi",22, Person.Gender.FEMALE));
        personList.add(new Person("sakshi",23, Person.Gender.FEMALE));
        personList.add(new Person("lohit",24, Person.Gender.MALE));
        personList.add(new Person("gagan",22, Person.Gender.MALE));
        personList.add(new Person("shivangi",22, Person.Gender.FEMALE));
        personList.add(new Person("nishtha",23, Person.Gender.FEMALE));
        personList.add(new Person("arpit",22, Person.Gender.MALE));
        personList.add(new Person("sneha",20, Person.Gender.FEMALE));
        personList.add(new Person("sanjana",18, Person.Gender.FEMALE));
        personList.add(new Person("sanjay",23, Person.Gender.MALE));
        personList.add(new Person("prakash",28, Person.Gender.MALE));

        List<Person>femaleList=personList.stream().filter(x->x.getGender()==Person.Gender.FEMALE).collect(Collectors.toList());

        System.out.println("List of females "+femaleList);
         personList.stream().forEach(x->{
             x.setAge(x.getAge()-2);
             System.out.println(x);
         });

    }
}
