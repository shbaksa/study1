package test;

import java.util.Random;

public class Random_My {
	
	public void getNumber()
	{
		int a=1001;
		int b=1220;
		Random rand = new Random();
		
		int num=0;
		
		num = rand.nextInt(a,b+1);
		System.out.println(num);
	}

}
