package myP;

import myP.Mentor;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class Main {


    public static void main(String[] args) {

        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("XMLFiles/MyConfig.xml");

        Mentor mentor = applicationContext.getBean("mentor", Mentor.class);
        mentor.getGreetings();
        System.out.println(mentor.getName());



        //For alias use name property instead of id

//        myP.Mentor mentor1 = applicationContext.getBean("mentor2", myP.Mentor.class);
//        mentor1.getGreetings();
//        System.out.println(mentor1.getName());

    }
}
