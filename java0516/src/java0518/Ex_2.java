package java0518;

import java.util.Scanner;

public class Ex_2 {

	public static void main(String[] args) {
		
		int i,y,z;
		
		Scanner sc = new Scanner(System.in);
				
		while(true)
		{
			System.out.println("첫번째 숫자를 입력하세요.");
			z = sc.nextInt();
			System.out.println("두번째 숫자를 입력하세요.");
			y = sc.nextInt();
			System.out.print(z + " 부터 " + y + " 까지의 ");
			
			for(i=0; i<=y; i++)
			{
				z=z+i;
				
				if(i==y)
				{		
				System.out.println("합은 = " + z);
				break;
				}
			
			}
			
		}
	

	}

}
