package java0523;

import java.util.Scanner;

public class Ex_3 {
	
				
		Scanner sc = new Scanner(System.in);
		int x  = sc.nextInt();
		int y  = sc.nextInt();
		int z  = sc.nextInt();	
	
		int sum = x+y+z;
		
		public int test1()
		{
			System.out.println("합은 = "+sum);
			
			return sum;
		}
		
		public double test2()
		{
	
			double avg = (double)sum/3;
			System.out.println("평균은 = "+ avg);
			
			return avg;
		}
		
}
