package Streams;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StreamsDemoApp {

    public static void main(String[] args) {
        List<Person> list = new ArrayList<>();
        list.add(new Person("Harish",21,Person.Gender.Male));
        list.add(new Person("Sid",21,Person.Gender.Male));
        list.add(new Person("Udit",19,Person.Gender.Male));
        list.add(new Person("Sonali",24,Person.Gender.Female));
        list.add(new Person("Heena",20,Person.Gender.Female));

        Iterator iterator = list.iterator();

        while(iterator.hasNext())
        {
            System.out.println((Person)iterator.next());
        }

        Stream stream = list.stream();
        List<Person> listFemale =  stream.filter(s->s.getGender()==1).collect(Collectors.toList());

        stream = list.stream();
        list = stream.map(s -> s.setAge(s.getAge()-2)).collect(Collectors.toList());
        iterator = list.iterator();

        while(iterator.hasNext())
        {
            System.out.println((Person)iterator.next());
        }

    }
}
