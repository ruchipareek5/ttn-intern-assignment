import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

public class StreamsDemoApp
{
    public static void main(String[] args) {

        Person p1=new Person("aa",21, Person.Gender.MALE);
        Person p2=new Person("bb",21, Person.Gender.MALE);
        Person p3=new Person("cc",21, Person.Gender.MALE);
        Person p4=new Person("dd",21, Person.Gender.FEMALE);
        Person p5=new Person("ee",21, Person.Gender.FEMALE);
        Person p6=new Person("ff",21, Person.Gender.FEMALE);
        Person p7=new Person("gg",21, Person.Gender.OTHER);
        Person p8=new Person("hh",21, Person.Gender.MALE);
        Person p9=new Person("ii",21, Person.Gender.MALE);
        Person p10=new Person("jj",21, Person.Gender.MALE);

        List<Person> list = new ArrayList();
        list.add(p1);
        list.add(p2);
        list.add(p3);
        list.add(p4);
        list.add(p5);
        list.add(p6);
        list.add(p7);
        list.add(p8);
        list.add(p9);
        list.add(p10);

        Map<Integer,Person> map =new HashMap<Integer, Person>();
        map.put(1,p1);
        map.put(2,p2);
        map.put(3,p3);
        map.put(4,p4);
        map.put(5,p5);
        map.put(6,p6);
        map.put(7,p7);
        map.put(8,p8);
        map.put(9,p9);
        map.put(10,p10);

        final Person.Gender g= Person.Gender.FEMALE;
        List<Person> femaleList =list.stream().filter(person -> person.getGender().equals(g)).collect(Collectors.toList());
        femaleList.stream().forEach(System.out::println);

        Map<Integer,String> me= list.stream().collect(Collectors.toMap());
        me.forEach((k,v)-> System.out.println(k+v));
        Map<Integer,String> anotherlist =map.entrySet().stream().map(l-> {}).collect(Collectors.toMap(Person::getAge,Person::toString));
/*
        Map<Integer,Person> anotherlist =map.entrySet().stream().filter(map->map.)


        Map<Integer, String> deptMap2 = mobiles.entrySet().stream()
                .filter(map -> map.getKey() == 2)
                .collect(Collectors.toMap(p -> p.getKey(), p -> p.getValue()));



        Map<Integer, String> deptMap = deptList.stream().collect(
                Collectors.toMap(Department::getDeptId, Department::getDeptName));


        Map<Integer,String> m= list.stream().collect(Collectors.toMap(Person::getAge,Person::getName));
*/

    }
}

