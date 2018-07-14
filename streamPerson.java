import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StreamPerson {

    public static void main(String[] args) {
        List<Person> list = new ArrayList<>();
        list.add(new Person("Ankur",28,Person.Gender.female));
        list.add(new Person("Berry",20,Person.Gender.male));
        list.add(new Person("Cherry",24,Person.Gender.male));
        list.add(new Person("Doni",29,Person.Gender.male));
        list.add(new Person("Ele",21,Person.Gender.female));

        Iterator i = list.iterator();

        while(i.hasNext())
        {
            System.out.println((Person)i.next());
        }

        Stream stream = list.stream();
        List<Person> f_list =  stream.filter(s->s.getGender()==1).collect(Collectors.toList());

        stream = list.stream();
        list = stream.map(s -> s.setAge(s.getAge()-2)).collect(Collectors.toList());
        i = list.iterator();

        while(i.hasNext())
        {
            System.out.println((Person)i.next());
        }

    }
}
