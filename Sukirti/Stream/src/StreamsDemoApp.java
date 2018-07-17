import java.util.*;

public class StreamsDemoApp {





    public static void main(String[] args) {
        List <Person > P1=new ArrayList<Person>();
        P1.add(new Person("Shashank",24, Person.gender.male));
        P1.add(new Person("yatharth",24, Person.gender.male));
        P1.add(new Person("vishakha",24, Person.gender.male));
        P1.add(new Person("kaku",24, Person.gender.male));
        P1.add(new Person("arjun",24, Person.gender.male));
        P1.add(new Person("tushar",24, Person.gender.male));
        P1.add(new Person("lucky",24, Person.gender.male));
        P1.add(new Person("trivedi",24, Person.gender.male));
        P1.add(new Person("Radha",24, Person.gender.male));
        P1.add(new Person("Rajesh",24, Person.gender.male));
        P1.add(new Person("Rekha",24, Person.gender.male));

        for(Person P:P1)
        {
            System.out.println(P);
        }

        List <Person > P2=new ArrayList<Person>();
        P2.add(new Person("sujay",76, Person.gender.female));
        P2.add(new Person("tarpit",84, Person.gender.female));
        P2.add(new Person("arpit",22, Person.gender.female));
        P2.add(new Person("bulbul",22, Person.gender.female));
        P2.add(new Person("sheila",29, Person.gender.female));
        P2.add(new Person("munni",24, Person.gender.female));
        P2.add(new Person(" billy",24, Person.gender.female));
        P2.add(new Person("amanda",20, Person.gender.female));
        P2.add(new Person("gungun",24, Person.gender.female));
        P2.add(new Person("inaira",22, Person.gender.female));
        P2.add(new Person("yaami",24, Person.gender.female));
        P2.add(new Person("shatrupa",24, Person.gender.female));
        P2.add(new Person("mansi",24, Person.gender.female));
        P2.add(new Person("sharu",26, Person.gender.female));
        for(Person P:P2)

        {
            System.out.println(P);
        }



        P2.stream().forEach(u->u.setAge(u.getAge()-2));
        P1.stream().forEach(u->u.setAge(u.getAge()-2));


        for(Person P:P1)

        {
            System.out.println(P);
        }
        for(Person P:P2)

        {
            System.out.println(P);
        }


    }
}
