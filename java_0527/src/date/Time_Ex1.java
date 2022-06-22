package date;

import java.time.LocalDateTime;

public class Time_Ex1 {

	public static void main(String[] args) {
		 LocalDateTime today=LocalDateTime.now();
         int year=today.getYear();
         int month=today.getMonthValue();
         int day=today.getDayOfMonth();
         
         System.out.println(year+"년 "+month+"월 "+day+"일 ");
         
         int hour=today.getHour();
         int min=today.getMinute();
         int sec=today.getSecond();
         
         System.out.println(hour+"시 "+min+"분 "+sec+"초");
         
         int yoil=today.getDayOfWeek().getValue(); // 0~6
         System.out.println(yoil+"요일입니다");
         
         System.out.println(today.getMonth());
         System.out.println(today.getDayOfWeek());
	}

}
