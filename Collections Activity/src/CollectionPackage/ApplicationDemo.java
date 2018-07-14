package CollectionPackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
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
        ArrayList<String> names=new ArrayList<>();
        System.out.println("The list of interns are as follows");
        //using for loop
        /*for(int i=0;i<a1.size();i++)
        {
            Interns interns=a1.get(i);
                names.add(interns.getName());
        }*/

        //using iterator

        //Iterator iterator=a1.iterator();
        Iterator<Interns> iterator=a1.iterator();
        while(iterator.hasNext())
        {
            //Interns interns=(Interns)iterator.next();
            Interns interns=iterator.next();
            names.add(interns.getName());
        }
        System.out.println(names);

    }
    public void displayInternTopper()
    {
        ArrayList<Integer> numbers=new ArrayList<>();
        for(int i=0;i<a1.size();i++)
        {
            Interns interns=a1.get(i);
            numbers.add(interns.getScore());
        }
        Collections.sort(numbers);
        int top=numbers.get(numbers.size()-1);
        System.out.println(top);
        String s="";
        for(int i=0;i<a1.size();i++)
        {
            Interns i2=a1.get(i);
            if(i2.getScore() == top)
            {
                System.out.println("the topper of the group is "+i2.getName());
                //s=i2.getName();
            }
        }
      //System.out.println("the topper of the group is "+s);

    }
    public void displayAverageScore()
    {
        float sum=0;
        ArrayList<Integer> numbers=new ArrayList<>();
        for(int i=0;i<a1.size();i++)
        {
            Interns interns=a1.get(i);
            sum+=interns.getScore();
        }
        System.out.println("the average score of the interns is "+ (sum/a1.size()));
    }
    public void internInfo()
    {
        System.out.println("The details of interns are as follows");
        /*
        for(int i=0;i<a1.size();i++)
        {
            Interns interns = a1.get(i);
            System.out.println("intern id "+interns.getId()+"  intern name "+interns.getName()+"  intern score "+interns.getScore());
        }*/

        //using iterator
        Iterator<Interns> iterator=a1.iterator();
        while(iterator.hasNext())
        {
            Interns interns = iterator.next();
            System.out.println("intern id "+interns.getId()+"  intern name "+interns.getName()+"  intern score "+interns.getScore());
        }
    }
    public static void main(String []args)
    {
        ApplicationDemo a1=new ApplicationDemo();
        for(int i=0;i<3;i++)
        a1.addIntern();
        a1.displayInternList();
        a1.displayInternTopper();
        a1.displayAverageScore();
        a1.internInfo();
    }
}
