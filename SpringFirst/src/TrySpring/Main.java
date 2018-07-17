package TrySpring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {

    public static void main(String[] args) {

        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("TrySpring/TryConfig.xml");

        Employee employee = applicationContext.getBean("employeeBean", Employee.class);
        Employee employee1 = applicationContext.getBean("employeeBean2", Employee.class);
        Employee employee2 = applicationContext.getBean("employeeBean3", Employee.class);
        Employee employee3 = applicationContext.getBean("employeeBean4", Employee.class);
//
//        System.out.println(employee.getName());
//        System.out.println("--------------------");
////        System.out.println(employee1.getName());
//        System.out.println("--------------------");
////        System.out.println(employee2.getName());
//        System.out.println("--------------------");
//        System.out.println(employee3.getName());
//

//        Student student = applicationContext.getBean("studentBean",Student.class);
//        System.out.println(student.getName());
//        System.out.println(student.getAge());
//        student.getDept();


        //Scope singleton init methodd will run
        Person person = applicationContext.getBean("personBean", Person.class);

        Person person1 = applicationContext.getBean("personBean1", Person.class);
        System.out.println(person1.getName());
        System.out.println(person1.getAge());
        person1.getDept();


//Closing Context
//        ((ClassPathXmlApplicationContext) applicationContext).registerShutdownHook();


    }
}
