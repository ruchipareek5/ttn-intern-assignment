//Calendar
//The java.util.Calendar.set(int year, int month, int date) method sets the values for the calendar fields YEAR, MONTH, and DAY_OF_MONTH.


import java.util.Calendar;

public class CalendarDemo {
   public static void main(String[] args) {

      // create a calendar
      Calendar cal = Calendar.getInstance();

      // print current time
      System.out.println("Current year is :" + cal.getTime());

      // set the year,month and day to something else
      cal.set(1995, 5, 25);

      // print the result
      System.out.println("Altered year is :" + cal.getTime()); 
   }
}