import java.util.stream.IntStream;
import java.util.stream.Stream;

public class Streams {
    public static void main(String[] args) {
        Stream<Integer> seqS = IntStream.range(1, 101).boxed();
        seqS.forEach(System.out::println);
        IntStream parS = IntStream.range(1, 101);
        parS.parallel().forEach(System.out::println);
    }
}