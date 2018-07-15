import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

public class MainApp {
    public static void main(String...args)
    {
        List<Person> personList=new LinkedList<Person>();
        personList.add(new Person("Reshma",22, Person.Gender.FEMALE));
        personList.add(new Person("Pooja",23, Person.Gender.FEMALE));
        personList.add(new Person("Amogh",24, Person.Gender.MALE));
        personList.add(new Person("Rohit",22, Person.Gender.MALE));
        personList.add(new Person("Mahi",22, Person.Gender.FEMALE));
        personList.add(new Person("Anu",23, Person.Gender.FEMALE));
        personList.add(new Person("Shri",22, Person.Gender.MALE));
        personList.add(new Person("Divya",20, Person.Gender.FEMALE));
        personList.add(new Person("Rajji",18, Person.Gender.FEMALE));
        personList.add(new Person("Nick",23, Person.Gender.MALE));
        personList.add(new Person("Mohan",28, Person.Gender.MALE));

        List<Person>femaleList=personList.stream().filter(x->x.getGender()==Person.Gender.FEMALE).collect(Collectors.toList());

        System.out.println("List of females "+femaleList);
        personList.stream().forEach(x->{
            x.setAge(x.getAge()-2);
            System.out.println(x);
        });

    }
}
