package text_0622;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.Scanner;

public class Date_cal {	
	
			LocalDate today = LocalDate.now();
			LocalDate me = LocalDate.of(1992,11,04);
			Scanner sc = new Scanner(System.in);
	
			int year = today.getYear();
			int month = today.getMonthValue();
			int day = today.getDayOfMonth();
			
			
			public void getToday()
			{
				
					System.out.println(year + "년 " + month + "월 " + day +"일 입니다.");
			}
			
			public void getDate()
			{
						long date = me.until(today, ChronoUnit.DAYS);
						System.out.println("태어난 일 부터" + date + " 일 째 되는 날 입니다. ");								
			}
			


}
