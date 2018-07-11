import java.util.Arrays;
public class ShallowCopy {

    private int[] data;

    // makes a shallow copy of values
    public ShallowCopy(int[] values) {
        data = values;
    }

    public void showData() {
        System.out.println( Arrays.toString(data) );
    }
}