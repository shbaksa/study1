package date;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

public class Time_Ex4 {

	public static void main(String[] args) {
		// D-day 구하기
		LocalDate xday=LocalDate.of(1993,5,27);
		LocalDate yday=LocalDate.now();
		LocalDate zday=LocalDate.of(2022, 12, 12);
		
		long day=xday.until(yday,ChronoUnit.DAYS);
		System.out.println(day);

	}

}
