


import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;



    public class parallelStream {

        public static void main(String[] args) {


            List<Integer> listOfIntegers = new ArrayList();
            for(int increment =1;increment <=100;increment++)
            {
                listOfIntegers.add(increment);
            }


            System.out.println("Simple Stream");
            listOfIntegers.stream().forEach(s-> System.out.println( s));

            System.out.println("Parallel Stream");
            listOfIntegers.parallelStream().forEach(s-> System.out.println( s));



        }

    }


