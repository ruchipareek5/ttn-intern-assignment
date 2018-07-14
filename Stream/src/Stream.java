import java.util.ArrayList;

public class Stream {

    public static void main(String[] args) {


        ArrayList<Person> personArrayList = new ArrayList<>();

        personArrayList.add(new Person("Lohit", 24, Person.SEX.male));
        personArrayList.add(new Person("Prateek", 24, Person.SEX.male));
        personArrayList.add(new Person("Rohit", 24, Person.SEX.male));
        personArrayList.add(new Person("Shubham", 25, Person.SEX.male));
        personArrayList.add(new Person("Rishabh", 22, Person.SEX.male));
        personArrayList.add(new Person("Surbhi", 26, Person.SEX.female));
        personArrayList.add(new Person("Nishtha", 21, Person.SEX.female));
        personArrayList.add(new Person("Deepika", 27, Person.SEX.female));
        personArrayList.add(new Person("Deepshika", 25, Person.SEX.female));
        personArrayList.add(new Person("Shivangi", 14, Person.SEX.female));


        personArrayList.stream().map(p-> {
                    if (p.getGender()==Person.SEX.female)
                        p.setAge(p.getAge() - 2);
                    return p;
        }).forEach(System.out::println);


        System.out.println("*************************");

        personArrayList.stream().filter(e -> e.getGender() == Person.SEX.female).forEach(System.out::println);




    }
}
