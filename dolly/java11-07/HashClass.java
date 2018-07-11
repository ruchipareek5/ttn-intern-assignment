import java.util.HashSet;

public class HashClass {
    public static void main(String[] args) {
        HashSet<Interns> hs = new HashSet();
        hs.add(new Interns("dolly",1,1));
        hs.add(new Interns("aa",2,10));
        hs.add(new Interns("bb",3,100));
        hs.add(new Interns("cc",4,1));
        hs.add(new Interns("dd",5,10));
        hs.add(new Interns("ee",6,100));
        hs.add(new Interns("ff",7,1));
        System.out.println(hs.remove(2));
        System.out.println(hs.toArray());
        System.out.println(hs.getClass());
    }
}
