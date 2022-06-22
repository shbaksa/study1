package test;

import java.util.Scanner;

public class Test_Main {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		Scanner sc= new Scanner(System.in);
		Date_Cal dc = new Date_Cal();
		
		dc.getToday();
		
		dc.getDate();
		
		Random_My rm = new Random_My();
		rm.getNumber();
		
		DB_Task dt = new DB_Task();
		
		
		
		dt.insert();
		dt.select();
		
		
	}

}
