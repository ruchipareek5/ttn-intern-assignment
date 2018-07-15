import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class StreamsDemoApp {

	public static void main(String args[]) {
		List<Person> persons = new ArrayList<>();
		persons.add(new Person("A", 11, Gender.MALE));
		persons.add(new Person("B", 12, Gender.MALE));
		persons.add(new Person("C", 13, Gender.FEMALE));
		persons.add(new Person("D", 14, Gender.FEMALE));
		persons.add(new Person("E", 15, Gender.FEMALE));
		persons.add(new Person("F", 16, Gender.MALE));
		persons.add(new Person("G", 17, Gender.FEMALE));
		persons.add(new Person("H", 18, Gender.MALE));
		persons.add(new Person("I", 19, Gender.FEMALE));
		persons.add(new Person("J", 20, Gender.MALE));

		for(Person person : persons) {
			System.out.println(person.getName());
		}

		List<Person> females = persons.stream()
				.filter(x -> x.getGender().equals(Gender.FEMALE))
				.collect(Collectors.toList());
		
		for(Person female : females) {
			System.out.println(female.getName());
		}
		
		persons.forEach(x -> x.setAge(x.getAge() - 2));

		for(Person person : persons) {
			System.out.println(person.getName() + " " + person.getAge());
		}
	}
	
}
