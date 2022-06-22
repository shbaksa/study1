package lotto;

import java.util.Random;

public class Lotto {
	
	int num;
	public int random()
	{
		// 1~45의 값을 발생시켜서 num이라는 변수에 저장
		Random rand = new Random();
		num = rand.nextInt(45)+1;
		// num변수를 return
		return num;
		
	}
	

}
