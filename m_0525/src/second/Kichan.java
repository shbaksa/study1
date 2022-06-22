package second;

import first.Father;
						// 상속 불러오는값
public class Kichan extends Father{
	public void test()
	{
		// 상속은 객체 생성 안했네?
		money=100;
		pay=99; // protected 는 상속을 통해서 사용 가능하다
		/*
		kor=98;
		phone=97;
		*/ // 에러
	}

}
