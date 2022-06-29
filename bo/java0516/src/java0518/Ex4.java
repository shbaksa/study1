package java0518;

import java.util.Scanner;

public class Ex4 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		System.out.println("종료는 0을 누르세요.");
		
		int a;
	
		while(true)
		{
			a=sc.nextInt();			
			
			if(a == 0)	
			{
				System.out.println("종료");
				break;
			} 
			else
			{
				System.out.println("안녕하세요.");
			}
		}
	}
}