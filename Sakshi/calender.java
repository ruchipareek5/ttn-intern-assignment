mport java.util.Calendar;

public class D_Calendar {
   public static void main(String[] args) {

      D_Calendar calendar = D_Calendar.getInstance();

      System.out.println("Current year is :" + calendar.getTime());

      calendar.set(2010, 4, 15);

      System.out.println("Altered year is :" + calendar.getTime()); 
   }
}