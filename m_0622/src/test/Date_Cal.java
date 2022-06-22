package test;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;

public class Date_Cal {
	
	public void getToday() {
	LocalDateTime today =LocalDateTime.now();
	
	int year=today.getYear();
	int month=today.getMonthValue();
	int day=today.getDayOfMonth();
	
	System.out.println(year+"년"+month+"월"+day+"일");
	}
	
	public void getDate() {

		LocalDate xday=LocalDate.of(1993, 05, 27);
		LocalDate today = LocalDate.now();
		
		long day=xday.until(today,ChronoUnit.DAYS);
		System.out.println(day);
		
	}
}
