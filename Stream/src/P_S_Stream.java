import java.util.stream.IntStream;

public class P_S_Stream
{
    public static void main(String[] args) {

        IntStream stream = IntStream.range(0, 101);

        System.out.println("The corresponding " +
                "parallel IntStream is :");
        stream.parallel().forEach(System.out::println);


        IntStream stream1 = IntStream.range(0,101);

        System.out.println("The sorted parallel" +
                " IntStream is :");
        stream1.sequential().sorted().forEach(System.out::println);

    }
}