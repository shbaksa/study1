package java0517Array;

import java.util.Scanner;

public class Ex1 {

	public static void main(String[] args) {
		
		Scanner no1 = new Scanner(System.in);
		Scanner no2 = new Scanner(System.in);
		Scanner a = new Scanner(System.in);
		int y,z,no3;
		String x;
		
		
		while(true)
		{
		System.out.print("첫번째 숫자");
		y = no1.nextInt();
		System.out.print("두번째 숫자");
		z = no2.nextInt();
		System.out.print("원하는 사칙연산을 입력하세요.");	
		x = a.next();
		
		switch(x)
		{
		case "+" :
				no3 = y+z;
			    System.out.println("값은 = "+ no3);
			    break;
		case "-" : 	
			    no3 = y-z;
				System.out.println("값은 = "+ no3);
				break;
		case "*" :	
				no3 = y*z;
				System.out.println("값은 = "+ no3);
				break;
		case "/" :	
				no3 = y/z;
				System.out.println("값은 = "+ no3);
				break;
		default :	
			System.out.println("+,-,*,/ 중에 입력하세요.");
		}
	}
 }
}


