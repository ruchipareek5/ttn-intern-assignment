package Regex;

import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Regex_practice {


    public static void main(String[] args) {

        // first way

        Pattern p = Pattern.compile(".s"); // . represent single character
        System.out.println(p); // returns string .s
        Matcher m = p.matcher("as");
        System.out.println(m); // returns java.util.regex.Matcher[ pattern=.s region=0,2 lastmatch =]

        boolean b = m.matches();

        System.out.println(b); // returns boolean

        // second way

        boolean b1 = Pattern.compile("....n").matcher("gagan").matches(); // .... represent 4 character space
        System.out.println(b1);

        // third way


        boolean b3 = Pattern.matches(".s","as");  // Pattern class internally has matches

        /*-------> public static boolean matches(String regex, CharSequence input) {
                         Pattern p = Pattern.compile(regex);
                         Matcher m = p.matcher(input);
                         return m.matches();
                        }*/

        // Character classes


        System.out.println(Pattern.matches(".[abc]","sb")); // [abc] means the last character should be a,b and c

        System.out.println(Pattern.matches("[a-z&&[^bc]]","f")); // a through z except b and c

        System.out.println("... ? quantifier (occurs once or not at all)");

        System.out.println(Pattern.matches(".[abc]?","sb")); // [abc] means the last character should be a,b and c

        System.out.println(Pattern.matches(".[abc]","sab"));

        System.out.println("... + quantifier ( occurs once or more time ");


        System.out.println(Pattern.matches("[abc]+","aabbcc"));

        System.out.println(Pattern.matches("[abc]+","bbccaa")); // does not depend on the order of the pattern

        System.out.println(Pattern.matches("[abc]+","bbcc"));

        System.out.println("..... * quantifier ( occurs zero or more times ) ");

        System.out.println(Pattern.matches("....[abc]*","zzzzccccb")); //  first 4 character can be anything then last can be abc and any number of time

        /*
                        X{n}	X occurs n times only
                        X{n,}	X occurs n or more times
                        X{y,z}	X occurs at least y times but less than z times



         */
        System.out.println("X{n}\tX occurs n times only\n");
        System.out.println(Pattern.matches("[abc]{3}","bbb"));


        // regex finder

        Scanner sc = new Scanner(System.in);
        System.out.println("enter regex :");
        Pattern pat = Pattern.compile(sc.nextLine());
        System.out.println("Enter the line :");
        Matcher mat = pat.matcher(sc.nextLine());

        boolean find = false;

        while(mat.find()){

            System.out.println("The found the text "+mat.group()+" starting from :"+mat.start()+
            "and ending :"+mat.end());
            find=true ;


        }

        if(!find){
            System.out.println("not found !!!");
        }









    }
}
