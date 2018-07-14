

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Streams {

    public static void main(String[] args) {
        List<Person> list = new ArrayList<>();
        list.add(new Person("aakash",21,Person.Gender.male));
        list.add(new Person("sakshi",21,Person.Gender.female));
        list.add(new Person("sukirti",19,Person.Gender.female));
    ]
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