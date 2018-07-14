package CollectionPack1;

import java.util.Comparator;

public class EmpComparator implements Comparator {

    @Override
    public int compare(Object o1, Object o2) {
        Employee e1=(Employee)o1;
        Employee e2=(Employee)o2;
        Integer i1=e1.getSalary();
        Integer i2=e2.getSalary();
        Integer a1=e1.getAge();
        Integer a2=e2.getAge();
        //e1 is to be added
        //e2 is already present
        //int temp=0;
        /*if(e1.getSalary()>e2.getSalary())
        return -1;
        else if(e1.getSalary()<e2.getSalary())
            return +1;
        else if(e1.getSalary()==e2.getSalary())
        {
            if(e1.getAge()>e2.getAge())
                temp= -1;
            if(e1.getAge()<e2.getAge())
                temp= 1;
        }
        return temp;*/
        if(i1.compareTo(i2)==0)
            return (-a1.compareTo(a2));
        else
        return -i1.compareTo(i2);
    }
}
