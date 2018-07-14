package Streams;

public class Person {
    public String name;
    public int age;

    enum Gender {
        Male,Female
    };
    public int gender;

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
