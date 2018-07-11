public class Mains {
    public static void main(String[] args) {
        int[] vals = {3, 7, 9};
        ShallowCopy e = new ShallowCopy(vals);
        e.showData(); // prints out [3, 7, 9]
        vals[0] = 13;
        e.showData(); // prints out [13, 7, 9]

        int[] val = {3, 7, 9};
        DeepCopy e1 = new DeepCopy(val);
        e1.showData(); // prints out [3, 7, 9]
        vals[0] = 13;
        e1.showData(); // prints out [3, 7, 9]


    }
}
