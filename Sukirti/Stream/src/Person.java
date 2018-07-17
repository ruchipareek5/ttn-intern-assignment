import java.util.*;
public class Person {
    private String name;
    private int age;
     enum gender  {male,female};

     gender gen;

    public gender getGen() {
        return gen;
    }

    public void setGen(gender gen) {
        this.gen = gen;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public Person(String name, int age, gender gen) {
        this.name = name;
        this.age = age;
        this.gen = gen;
    }

    @Override
    public String toString() {
        return "Person{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", gen=" + gen +
                '}';
    }
}
