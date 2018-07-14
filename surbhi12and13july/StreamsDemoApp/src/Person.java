public class Person {
    private String name;
    private int age;
    public enum Gender{MALE,FEMALE};
    private Gender gender;
    public Person(String name,int age,Gender gender)
    {
        this.name=name;
        this.age=age;
        this.gender=gender;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public Gender getGender() {
        return gender;
    }

    @Override
    public String toString() {
        return "name "+name+" age "+age+" gender "+gender;
    }
}
