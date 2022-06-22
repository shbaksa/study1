package lotto;

import java.util.Random;

public class Lotto2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Random rand= new Random();
		
		int [] x = new int[6];
		
		for(int i=0;i<=6;i++)
		{
			int y=rand.nextInt(45)+1;
			x[i]=y;
			int z=rand.nextInt(45)+1;
			
			if(x[i]!=z)
			{
				System.out.print(x[i]+" ");
			}
			else if (x[i]==z)
			{
				i--;
				break;
			}
		}
		
		
		

	}

}
