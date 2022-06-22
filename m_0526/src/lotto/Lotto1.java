package lotto;

import java.util.Random;

public class Lotto1 {
	public static void main(String[] args) {
		
		Random rand= new Random();
	
		for(int i=1;i<=6;i++)
		{
			int n=rand.nextInt(45)+1;
			System.out.print(n+" ");
		}
	}

}
