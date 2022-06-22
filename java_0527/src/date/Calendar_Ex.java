package date;

import java.util.Calendar;

public class Calendar_Ex {
   public static void main(String[] args) {
	 Calendar today=Calendar.getInstance();
	 int year=today.get(Calendar.YEAR);
	 int month=today.get(Calendar.MONTH)+1; // 0~11
	 int day=today.get(Calendar.DATE);
	 
	 System.out.println(year+"년 "+month+"월 "+day+"일");
	 
	 int hour=today.get(Calendar.HOUR);
	 int min=today.get(Calendar.MINUTE);
	 int sec=today.get(Calendar.SECOND);
	 
	 System.out.println(hour+"시 "+min+"분 "+sec+"초");
	 
	 int yoil=today.get(Calendar.DAY_OF_WEEK); // 1~7
	 System.out.println(yoil+"요일입니다");
}
}
