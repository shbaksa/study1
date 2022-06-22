package controll;

import java.util.Scanner;

public class Switch1 {

	public static void main(String[] args) {
		// chk변수에 1~4까지의 값이 존재
		// 1:짜장면   2:우동  3:짬뽕  4:탕수육  
		Scanner sc=new Scanner(System.in);
		int chk=sc.nextInt();
		
		switch(chk)
		{
		   case 1: System.out.println("짜장면"); break;
		   case 2: System.out.println("우동"); break;
		   case 3: System.out.println("짬뽕"); break;
		   case 4: System.out.println("탕수육"); break;
		   default: System.out.println("잘못 입력");
		}
		
		 

	}

}
