package text_0622;

import java.util.Random;

public class Random_My {


	
	Random num = new Random();
	
	public void getNumber()
	{
				
				int count = num.nextInt(1001,1220);
	
			
				System.out.println("랜덤숫자 : " + count);
		
		
	}
}
