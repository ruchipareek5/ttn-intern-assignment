package StreamsAssignment;

public class Person {
    public String name;
    private int age;
    enum Gender {
      male,female
    };
    public int gender;

    @Override
    public String toString() {
        return "Person{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", gender=" + gender +
                '}';
    }

    Person(String name, int age, Gender gender)
    {
        this.name = name;
        this.age = age;
        this.gender = gender.ordinal();
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

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }
}
