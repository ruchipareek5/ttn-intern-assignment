package CollectionPack1;

import sun.reflect.generics.tree.Tree;

import java.util.*;

public class Application {
    public static void main(String[] args) {
        Employee e1=new Employee("souvik",2000,24);
        Employee e2=new Employee("subham",5000,23);
        Employee e3=new Employee("manju",1050,21);
        Employee e4=new Employee("soshanka",20000,34);
        Employee e5=new Employee("deepak",2500,54);
        Employee e6=new Employee("dhruv",2007,64);
        Employee e7=new Employee("joyy",5000,20);
        List empList=new ArrayList(Arrays.asList(e1,e2,e3,e4,e5,e6,e7));
        TreeSet <Employee> ts=new TreeSet<>(new EmpComparator());
        Iterator <Employee> itr=empList.iterator();
        while(itr.hasNext())
        {
            Employee employee=itr.next();
            //System.out.println(employee.getAge());
            ts.add(employee);
        }
        System.out.println(ts);
    }
}
