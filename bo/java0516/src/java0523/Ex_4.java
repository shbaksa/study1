package java0523;

import java.util.Scanner;

public class Ex_4 {

		
		int[] cal = new int[2];
	
		public int[] test1(int x, int y, int z)
		{
					
			cal[0] = x+y+z;
			cal[1] = cal[0]/3;
			System.out.println("합은 = "+ cal[0] +" 평균은 = "+ cal[1]);
			
			return cal;
		}

}
