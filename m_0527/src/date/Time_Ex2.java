package date;

import java.time.LocalDate;

public class Time_Ex2 {

	public static void main(String[] args) {
		// 오늘 기준으로 이전, 이후의 날짜를 알아내기
		
		LocalDate today=LocalDate.now();
		int year=today.getYear();
		int month=today.getMonthValue();
		int day=today.getDayOfMonth();
		
		System.out.println(year+"년 "+month+"월 "+day+"일");
		
		LocalDate dday=today.plusDays(1000); // today객체의 날짜로 부터 괄호안의 값 이후의 날짜를 리턴해준다		
		int year1=dday.getYear();
		int month1=dday.getMonthValue();
		int day1=dday.getDayOfMonth();		
	
		System.out.println(year1+"년 "+month1+"월 "+day1+"일");
		
		LocalDate xday=today.minusDays(1000);
		int year2=xday.getYear();
		int month2=xday.getMonthValue();
		int day2=xday.getDayOfMonth();	
		System.out.println(year2+"년 "+month2+"월 "+day2+"일");
		System.out.println(today +" "+ xday);

	}

}
