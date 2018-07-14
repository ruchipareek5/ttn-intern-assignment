import java.util.Random;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class RandomStramGenerator {
    public static void main(String[] args) {

        IntStream sequentialStream=IntStream.range(1,100);
        sequentialStream.forEach(x -> System.out.println(x));
        IntStream parallelStream=IntStream.range(1,100).parallel();
        System.out.println("Parallel Stream" +parallelStream);
        parallelStream.forEach(x-> System.out.println(x));

    }
}