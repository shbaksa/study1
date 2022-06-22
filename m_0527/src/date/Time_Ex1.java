package date;

import java.time.LocalDateTime;

public class Time_Ex1 {

	public static void main(String[] args) {
		LocalDateTime today=LocalDateTime.now(); // new가포함
		int year=today.getYear();
		int month=today.getMonthValue();
		int day=today.getDayOfMonth();
		System.out.println(year+"년 "+month+"월 "+day+"일");
		System.out.println(today.getMonth()); // 영문으로 나온다 Value붙이면 숫자로 출력
		
		int hour=today.getHour();
		int min=today.getMinute();
		int sec=today.getSecond();
		System.out.println(hour+"시 "+min+"분 "+sec+"초");
		
		int yoil=today.getDayOfWeek().getValue(); //0~6 0일 1월 2화 3수 4목 5금 6토
		System.out.println(today.getDayOfWeek()); // 영문으로 나온다 Value붙이면 숫자로 출력
		System.out.println(yoil+"요일입니다");
		char y;
		switch(yoil)
		{
		case 0 : y='일'; break;
		case 1 : y='월'; break;
		case 2 : y='화'; break;
		case 3 : y='수'; break;
		case 4 : y='목'; break;
		case 5 : y='금'; break;
		case 6 : y='토'; break;
		default: y='X';
		}
		System.out.println(y+"요일입니다");

	}

}
