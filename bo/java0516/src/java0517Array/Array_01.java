package java0517Array;

import java.util.Scanner;

public class Array_01 {

	public static void main(String[] args) {
		
		
		int[] xx = new int[4]; 
		
		Scanner y = new Scanner(System.in);
		
		xx[0] = y.nextInt();
		xx[1] = y.nextInt();
		xx[2] = y.nextInt();
		xx[3] = y.nextInt();	
		
		for (int i = 0; i < xx.length; i++)
		{	
			System.out.printf("%d배열 : %d\n", i, xx[i]);
		}
				
	}

}
