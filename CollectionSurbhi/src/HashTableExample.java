import java.util.Hashtable;

public class HashTableExample {
    public static void main(String...args) {
        Hashtable<String, Integer> hashtable = new Hashtable<>();
        hashtable.put("Gagan", 100);
        hashtable.put("Nishtha",100);
        hashtable.put("Aakash",80);
        Hashtable<String,Integer> h1;
        h1= (Hashtable<String, Integer>) hashtable.clone();
        System.out.println("Elements in h1 after cloning "+h1);
        hashtable.clear();
        System.out.println("Elements of hashtable after clearing "+hashtable);
        System.out.println("Elements in h1 after clearing original hashtable" + h1);
    }

}
