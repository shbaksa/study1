package java0519;

import java.util.Arrays;
import java.util.Random;
import java.util.Scanner;

public class Ex_4 {

	public static void main(String[] args) {

		
		Scanner sc = new Scanner(System.in);
		
		while(true)
		{
		
		System.out.println("갯수를 입력하세요.");
		int k = sc.nextInt();
		int[] num = new int[k];
		
		
		for(int i=0; i<k; i++)
		{
			int x = (int)Math.random()*45;
			num[i] = x+1;
			for(int j=0; j<i; j++)
			{
				if(num[i] == num[j])
				{
					i--;					
					break;
				}
			}
		}
		System.out.println(Arrays.toString(num));
		}
	}
}
