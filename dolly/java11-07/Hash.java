import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Hashtable;

public class Hash {
    public static void main(String[] args) {
        Hashtable<Interns,String> hs = new Hashtable();
        Interns i1=new Interns("dolly",1,25);
        Interns i2=new Interns("ayushi",2,30);
        Interns i3=new Interns("aaa",3,35);
        Interns i4=new Interns("bbb",4,40);
        Interns i5=new Interns("ccc",5,45);
        Interns i6=new Interns("ddd",6,50);
        Interns i7=new Interns("eee",7,55);
        hs.put(i1,"intern1");
        hs.put(i2,"intern2");
        hs.put(i3,"intern3");
        hs.put(i4,"intern4");
        hs.put(i5,"intern5");
        hs.put(i6,"intern6");
        hs.put(i7,"intern7");
        System.out.println(hs.containsKey(i2));
        System.out.println(hs.get(i6));
        System.out.println(hs.keySet());
        System.out.println();
        SimpleDateFormat sdf = new SimpleDateFormat("dd/M/yyyy");
        String date = sdf.format(new Date());
        System.out.println(date);
        Calendar calendar = Calendar.getInstance();
        Date date1 =  calendar.getTime();
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy MMM dd HH:mm:ss");
        Calendar calendar1 = new GregorianCalendar(2013,1,28,13,24,56);

        int year       = calendar.get(Calendar.YEAR);
        int month      = calendar.get(Calendar.MONTH); // Jan = 0, dec = 11
        int dayOfMonth = calendar.get(Calendar.DAY_OF_MONTH);
        int dayOfWeek  = calendar.get(Calendar.DAY_OF_WEEK);
        int weekOfYear = calendar.get(Calendar.WEEK_OF_YEAR);
        int weekOfMonth= calendar.get(Calendar.WEEK_OF_MONTH);

        int hour       = calendar.get(Calendar.HOUR);        // 12 hour clock
        int hourOfDay  = calendar.get(Calendar.HOUR_OF_DAY); // 24 hour clock
        int minute     = calendar.get(Calendar.MINUTE);
        int second     = calendar.get(Calendar.SECOND);
        int millisecond= calendar.get(Calendar.MILLISECOND);

        System.out.println(sdf.format(calendar.getTime()));

        System.out.println("year \t\t: " + year);
        System.out.println("month \t\t: " + month);
        System.out.println("dayOfMonth \t: " + dayOfMonth);
        System.out.println("dayOfWeek \t: " + dayOfWeek);
        System.out.println("weekOfYear \t: " + weekOfYear);
        System.out.println("weekOfMonth \t: " + weekOfMonth);

        System.out.println("hour \t\t: " + hour);
        System.out.println("hourOfDay \t: " + hourOfDay);
        System.out.println("minute \t\t: " + minute);
        System.out.println("second \t\t: " + second);
        System.out.println("millisecond \t: " + millisecond);


    }
}
