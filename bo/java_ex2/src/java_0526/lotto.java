package java_0526;

import java.util.Random;
import java.util.Arrays;

public class lotto {

		int num;
	
		public int random()
		{
			Random lotto = new Random();
			num = lotto.nextInt(45)+1;
			
			return num;
		}
	
}
	

