import java.util.stream.IntStream;
import java.util.stream.Stream;

public class Streams {
    public static void main(String[] args) {
        Stream<Integer> stream = IntStream.range(1, 101).boxed();
        stream.forEach(System.out::println);
        IntStream stream1 = IntStream.range(1, 101);
        stream1.parallel().forEach(System.out::println);
    }
}
