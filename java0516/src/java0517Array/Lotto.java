package java0517Array;

import java.util.Arrays;
import java.util.Random;

public class Lotto {

	public static void main(String[] args) {
		
		
		int[] count = new int[6];
		Random lotto = new Random(); 
		
		for(int i=0; i<6; i++)
		{
			count[i] = lotto.nextInt(45)+1;
			
			for(int j=0; j<i; j++)
			{
				if(count[i] == count[j])
				{
					i--;
				    break;
				}
			}
		}
		System.out.println(Arrays.toString(count));	
	}
}
