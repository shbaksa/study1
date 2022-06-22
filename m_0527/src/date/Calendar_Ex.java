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
		
		int yoil=today.get(Calendar.DAY_OF_WEEK); // 1~7 1일 2월 3화 4수 5목 6금 7토
		System.out.println(yoil+"요일입니다"); // 일요일로 출력해보기
		
		char y='X';
		switch(yoil)
		{
		case 1 : y='일'; break;
		case 2 : y='월'; break;
		case 3 : y='화'; break;
		case 4 : y='수'; break;
		case 5 : y='목'; break;
		case 6 : y='금'; break;
		case 7 : y='토'; break;		
		}
		System.out.println(y+"요일입니다");

	}

}
