import java.util.Arrays;

public class StreamTest {
    public static void main(String[] args) {
        int array[] = new int[100];
        for (int i = 0; i < array.length; i++) {
            array[i] = i + 1;
        }
        System.out.println("Sequential stream:");
        Arrays.stream(array).forEach(a -> System.out.println(a));
        System.out.println("Parallel stream:");
        Arrays.stream(array).parallel().forEach(a -> System.out.println(a));
    }
}
