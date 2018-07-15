import java.util.*;  
class EmployeeDetails {  
int id;  
String name;
long salary,;  
  
public EmployeeDetails(int id, String name, int salary) {  
    this.id = id;  
    this.name = name;  
    this.salary = salary;  
   
}  
}  
public class HashSetPrc {  
public static void main(String[] args) {  
    HashSet<EmployeeDetails> set=new HashSet<EmployeeDetails>();  
    //Creating EmployeeDetailss  
    EmployeeDetails b1=new EmployeeDetails(1,"A",20000);  
    EmployeeDetails b2=new EmployeeDetails(2,"B",5000);  
    EmployeeDetails b3=new EmployeeDetails(3," C",10000);  
    //Adding EmployeeDetails to HashSet  
    set.add(b1);  
    set.add(b2);  
    set.add(b3);  
    //Traversing HashSet  
    for(EmployeeDetails b:set){  
    System.out.println(b.id+" "+b.name+" "+b.salary);  
    }  
}  
}  