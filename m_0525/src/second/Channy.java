package second;

import first.Father; // 다른 패키지의 다른 클래스를 불러올때 (import) 호출을 시켜줘야한다

public class Channy {
	public void test()
	{
		// 다른 패키지의 다른 클래스
		Father fa=new Father();
		fa.money=100;
		/*fa.pay=99;
		fa.kor=98;
		fa.phone=97;
		*/ // 에러	
	}

}
