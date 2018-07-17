package TrySpring;

public class Person {

    String name;
    int age;
    Dept dept;

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public Dept getDept() {
        dept.dept();
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private void myInitMethod() {
        System.out.println("Init Method");
    }

    private void myDestroyMethod() {
        System.out.println("Destroy Method");
    }
}
