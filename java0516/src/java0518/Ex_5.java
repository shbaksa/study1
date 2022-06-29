package java0518;

import java.util.Scanner;

public class Ex_5 {

	public static void main(String[] args) {
	
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("n배수의 값을 입력하시오.");
		
		int number = sc.nextInt();
				
		
		for(int i=1; i<=500; i++)
		{
			int x = i%number;
			if(x == 0) 
			{
			System.out.print(i+" ");
				if(i > 60)
				{
					break;
				}
			}
			else
			{
				//System.out.print(i+" = X ");
			}
		}
		
	}

}
