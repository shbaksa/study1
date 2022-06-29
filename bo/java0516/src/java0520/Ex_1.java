package java0520;

import java.util.Scanner;

public class Ex_1 {

		Scanner sc = new Scanner(System.in);
		int[] subject = new int[3];
		int sum,avg;
		
		public void input_1()
		{
			System.out.println("각 성적을 입력하세요.");
			for(int i=0; i<3; i++)
			{
				subject[i] = sc.nextInt();
			}
		}
		
		public int input_2(int a ,int b,int c)
		{
			System.out.println("합과 평균은 ");
			
			sum = a+b+c;
								
			return sum;
		}
		
		public void output()
		{
			System.out.println(sum + "  " + avg);
		}
	
		
	}


