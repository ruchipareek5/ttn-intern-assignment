package Assign_Stream;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StreamPerson {

    public static void main(String[] args) {
        List<Person> list = new ArrayList<>();
        list.add(new Person("A",20,Person.Gender.female));
        list.add(new Person("B",24,Person.Gender.male));
        list.add(new Person("C",21,Person.Gender.male));
        list.add(new Person("D",19,Person.Gender.male));
        list.add(new Person("E",20,Person.Gender.female));

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