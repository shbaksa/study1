package java0518;

import java.util.Scanner;

public class Test5 {

	public static void main(String[] args) {
		// 1부터 x까지의 합 구하기 (x는 Scanner로 입력받기)
		
		// x부터 y까지의 합 구하기 
		
		// a가 b보다 크다면 값을 교환 후 실행하기


		int i,y,z,a,b,c;
		
		Scanner sc = new Scanner(System.in);
		/*
		System.out.println("첫번째 숫자를 입력하세요.");
		a = sc.nextInt();
		System.out.println("두번째 숫자를 입력하세요.");
		b = sc.nextInt();
		
		if(a>b)
		{
			c=b;
			b=a;
			a=c;			
			System.out.println("a는 "+a+" b는 "+b);
		}
		else
			
		{
			System.out.println("a는 "+a+"b는 "+b);
		}
		*/
	
		while(true)
		{
			System.out.println("첫번째 숫자를 입력하세요.");
			z = sc.nextInt();
			System.out.println("두번째 숫자를 입력하세요.");
			y = sc.nextInt();
			System.out.print(z + " 부터 " + y + " 까지의 ");
			
			int x=0;
			
			for(i=z; i<=y; i++)
			{
				x += i;
			}
			System.out.println("합은 = " + x);
		}
	

	}

}
