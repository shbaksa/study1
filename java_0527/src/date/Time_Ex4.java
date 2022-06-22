package date;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

public class Time_Ex4 {
    public static void main(String[] args) {
		LocalDate xday=LocalDate.of(1993,4,27);
		LocalDate yday=LocalDate.now();
		
		long day=xday.until(yday,ChronoUnit.DAYS);
		
		System.out.println(day);
	}
}
