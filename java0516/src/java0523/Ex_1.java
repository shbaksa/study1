package java0523;

import java.util.Scanner;

public class Ex_1 {

		
		public void test1()
		{
			
			System.out.println("국영수 점수를 입력하세요."); 
			
			Scanner sc = new Scanner(System.in);
			int x  = sc.nextInt();
			int y  = sc.nextInt();
			int z  = sc.nextInt();
			
			int sum = x+y+z;
			double avg = (double)sum/3;
			System.out.println("합은 = "+sum+"  평균은 = "+avg);
		}
		
}
