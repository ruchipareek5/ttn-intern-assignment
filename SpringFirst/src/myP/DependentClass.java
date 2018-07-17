package myP;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class DependentClass {



    public void getData() {
        System.out.println("Method from dependent class");
    }
}
