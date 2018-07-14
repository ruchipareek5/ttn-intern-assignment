public class Person {
    String name;
    int age;
    Gender gender;
    enum Gender {
        MALE, FEMALE, OTHER
    };

    public Person(String name, int age, Gender gender) {
        this.name = name;
        this.age = age;
        this.gender = gender;
    }

    public Gender getGender() {
        return gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    void getPerson() {
        System.out.println("Name: " + name + ", age: " + age + ", gender: " + gender);
    }
}
