package CollectionPackage;

import java.util.ArrayList;
import java.util.Scanner;
public class ApplicationDemo {
    private ArrayList <Interns> a1=new ArrayList<>();
    public void addIntern()
    {
        String name;
        int id,score;
        Interns i=new Interns();
        Scanner scanner=new Scanner(System.in);
        name=scanner.next();
        id=scanner.nextInt();
        score=scanner.nextInt();
        i.setName(name);
        i.setId(id);
        i.setScore(score);
        a1.add(i);
        System.out.println("Intern inserted to the list sucessfully");
    }
    public void displayInternList()
    {
        System.out.println(a1);
    }
    public void displayInternTopper()
    {
    	int max=0;
    	for()
    }
    public int displayAverageScore()
    {
        return 0;
    }
    public void internInfo()
    {

    }
    public static void main(String []args)
    {
        ApplicationDemo a1=new ApplicationDemo();
        a1.addIntern();
    }
}
