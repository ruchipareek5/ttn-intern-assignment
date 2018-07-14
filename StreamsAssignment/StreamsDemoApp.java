package StreamsAssignment;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StreamsDemoApp {

    public static void main(String[] args) {
        List<Person> list = new ArrayList<>();
        list.add(new Person("Gaurav",21,Person.Gender.male));
        list.add(new Person("Siddarth",21,Person.Gender.male));
        list.add(new Person("Chirag",19,Person.Gender.male));
        list.add(new Person("Yatin",24,Person.Gender.male));
        list.add(new Person("Mehek",20,Person.Gender.female));

        Iterator e = list.iterator();

        while(e.hasNext())
        {
            System.out.println((Person)e.next());
        }

        Stream stream = list.stream();
        List<Person> listFemale =  stream.filter(s->s.getGender()==1).collect(Collectors.toList());

        stream = list.stream();
        list = stream.map(s -> s.setAge(s.getAge()-2)).collect(Collectors.toList());
        e = list.iterator();

        while(e.hasNext())
        {
            System.out.println((Person)e.next());
        }

    }
}
