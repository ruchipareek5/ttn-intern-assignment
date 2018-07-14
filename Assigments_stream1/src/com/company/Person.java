package com.company;

public class Person {

    String name;
    int age;

    public Person() {

    }

    public enum Sex
    {
        male,female
    }
    Sex gender;

    public Person(String name, int age, Sex gender) {
        this.name = name;
        this.age = age;
        this.gender = gender;
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

    public Sex getGender() {
        return gender;
    }

    public void setGender(Sex gender) {
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "Person[" + "name='" + name + '\'' + ", age=" + age + ", gender=" + gender + ']';
    }
}
