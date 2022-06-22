package date;

import java.time.LocalDate;

public class Time_Ex3 {

	public static void main(String[] args) {
		// 특정일 부터 몇일전,몇일후 구하기
		
		LocalDate today=LocalDate.now(); // 오늘날짜
		LocalDate dday=LocalDate.of(2020, 2, 11); // 특정일
		
		LocalDate xday=dday.plusDays(1000);		
		int year2=xday.getYear();
		int month2=xday.getMonthValue();
		int day2=xday.getDayOfMonth();	
		System.out.println(year2+"년 "+month2+"월 "+day2+"일");
		LocalDate xxday=dday.minusDays(1000);
		int year3=xxday.getYear();
		int month3=xxday.getMonthValue();
		int day3=xxday.getDayOfMonth();	
		System.out.println(year3+"년 "+month3+"월 "+day3+"일");

	}

}
