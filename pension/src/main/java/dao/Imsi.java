package dao;

import java.time.LocalDate;

public class Imsi {

	public static void main(String[] args) {
		 LocalDate today=LocalDate.now();
		 
		 LocalDate dday=LocalDate.of(2022, 7, 15);
		 
		 if(today.isBefore(dday))
		 {
			 System.out.println("1");
		 }
		 else 
		 {
			 System.out.println("2");
		 }
			 
			 
	}

}
