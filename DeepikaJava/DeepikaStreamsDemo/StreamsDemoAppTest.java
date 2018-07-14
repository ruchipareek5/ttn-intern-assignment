import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class StreamsDemoAppTest {
    public static void main(String[] args) {
        List <Person> listOfPersons = new ArrayList<>();
        listOfPersons.add(new Person("Ginny", 14, Person.Gender.FEMALE));
        listOfPersons.add(new Person("Hermione", 15, Person.Gender.FEMALE));
        listOfPersons.add(new Person("Luna", 13, Person.Gender.FEMALE));
        listOfPersons.add(new Person("Harry", 16, Person.Gender.MALE));
        listOfPersons.add(new Person("Ron", 16, Person.Gender.MALE));
        listOfPersons.add(new Person("George", 18, Person.Gender.MALE));
        listOfPersons.add(new Person("Fred", 18, Person.Gender.MALE));
        listOfPersons.add(new Person("Neville", 16, Person.Gender.MALE));
        listOfPersons.add(new Person("Hagrid", 60, Person.Gender.MALE));
        listOfPersons.add(new Person("Dumbledore", 110, Person.Gender.MALE));
        System.out.println("-- List of persons: --");
        for (Person p: listOfPersons) {
            p.getPerson();
        }

        System.out.println("-- List of females: --");
        List <Person> listOfFemales = listOfPersons.stream()
                .filter(p -> p.getGender().equals(Person.Gender.FEMALE))
                .collect(Collectors.toList());

        for (Person p: listOfFemales) {
            p.getPerson();
        }

        System.out.println("-- List of persons two years ago: --");
        listOfPersons.stream()
                .forEach(p -> p.setAge(p.getAge() - 2));

        for (Person p: listOfPersons) {
            p.getPerson();
        }
    }
}
