package CollectionPack1;

public class Employee {
    private String ename;
    private int salary;
    private int age;

    public Employee(String ename, int salary, int age) {
        this.ename = ename;
        this.salary = salary;
        this.age = age;
    }

    public String getEname() {
        return ename;
    }

    public int getSalary() {
        return salary;
    }

    public int getAge() {
        return age;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "ename='" + ename + '\'' +
                ", salary=" + salary +
                ", age=" + age +
                '}';
    }
}
