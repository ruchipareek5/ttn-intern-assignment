import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StreamsExercise {

    public static void main(String[] args) {
        List<Person> l = new ArrayList<>();
        l.add(new Person("Prateek",21,Person.Gender.male));
        l.add(new Person("Vagish",21,Person.Gender.male));
        l.add(new Person("Gagan",19,Person.Gender.male));
        l.add(new Person("Arpit",24,Person.Gender.male));
        l.add(new Person("Surbhi",20,Person.Gender.female));

        Iterator<Person> p = l.iterator();

        while(p.hasNext())
        {
            System.out.println(p.next());
        }

        Stream stream = l.stream();
        List<Person> female =  stream.filter(s->s.getGender()==1).collect(Collectors.toList());

        stream = l.stream();
        l = stream.map(s -> s.setAge(s.getAge()-2)).collect(Collectors.toList());
        p = l.iterator();

        while(e.hasNext())
        {
            System.out.println(p.next());
        }

    }
}
