package lotto;

import java.util.Arrays;
import java.util.Random;

public class Lotto3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Random rand = new Random();
	
		int[] x = new int[6];

		for (int i = 0; i < 7; i++) 
		{
			int y = rand.nextInt(45) + 1;
			x[i] = y;
			for (int k = 0; k < 7; k++) 
			{
				
				if (x[i] != x[k]) 
				{
					
				}

				else if (x[i] == x[k]) 
				{
					k--;
					break;
				}
			}
			System.out.print(x[i] + " ");
		}
	}
}
