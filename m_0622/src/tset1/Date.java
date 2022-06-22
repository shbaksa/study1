package tset1;


import java.time.LocalDateTime;

public class Date {
	public static void main(String[] args) {
		
		LocalDateTime today=LocalDateTime.now();
		int hour = today.getHour();
		int year = today.getYear();
		System.out.println(hour+" "+year);
	}
}
