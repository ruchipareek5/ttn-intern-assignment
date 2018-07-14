mport java.util.Calendar;

public class CalendarDemo {
   public static void main(String[] args) {

      Calendar calendar = Calendar.getInstance();

      System.out.println("Current year is :" + calendar.getTime());

      calendar.set(2000, 12, 09);

      System.out.println("Altered year is :" + calendar.getTime()); 
   }
}