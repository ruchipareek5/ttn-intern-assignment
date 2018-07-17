package myP;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Component;


@Component
public class Mentor implements IMentor {

    public Mentor() {
    }

    @Override
    public void getGreetings() {
        System.out.println("Hello Frands");
    }


    private DependentClass dependent;


    public Mentor(DependentClass dependent, String name, int age) {
        this.dependent = dependent;
        this.age = age;
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }


    public Mentor(DependentClass dependent) {
        this.dependent = dependent;
    }


    private String name;
    private int age;

    public String getName() {
        dependent.getData();
        return name + this.age;
    }


    public void setName(String name) {
        this.name = name;
    }

    public void init() {
        System.out.println("Init functions");
    }

    public void myDestroyFunction() {
        System.out.println("Destroy function");
    }

    @Autowired

    public void setDependent(DependentClass dependent) {
        this.dependent = dependent;
        System.out.println("auto wired setter dependent");
    }

    public DependentClass getDependent() {
        return dependent;
    }
}
