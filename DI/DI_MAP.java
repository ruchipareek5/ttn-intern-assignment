package DI;

import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

public class DI_MAP {
    public static void main(String[] args) {

        Map<Integer,String> map = new HashMap<Integer, String>();
        map.put(1, "ABC");
        map.put(2, "XCB");
        map.put(3, "ABB");
        map.put(4, "ZIO");

        System.out.println(
                map.entrySet().stream().collect(Collectors.toMap(e->e.getKey(),e->e.getValue()))
        );


    }
}
