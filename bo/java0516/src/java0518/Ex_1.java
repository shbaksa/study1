package java0518;

import java.util.Scanner;

public class Ex_1 {

	public static void main(String[] args) {
		
		int no1,no2,end;
		String z;
		
		Scanner x = new Scanner(System.in);
		
		
		while(true)
		{
			System.out.print("첫번째 숫자를 입력하세요.");
			no1 = x.nextInt();
			System.out.print("두번째 숫자를 입력하세요.");
			no2 = x.nextInt();
			System.out.print("원하는 사칙연산을 입력하세요.");
			z = x.next();
			
		switch(z)	
		{
		case "+" :
			end = no1+no2;
			System.out.println("답은 = " + end);
			break;
		case "-" : 	
			end = no1-no2;
			System.out.println("답은 = " + end);
			break;
		case "*" : 	
			end = no1*no2;
			System.out.println("답은 = " + end);
			break;
		case "/" : 	
			end = no1/no2;
			System.out.println("답은 = " + end);
			break;
					
			default : 
				System.out.println("사칙연산을 입력하세요.");
		}
			
				
		
	}

	}
}
