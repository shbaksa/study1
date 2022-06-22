package method;

public class Method2 {
	// 전역변수, 지역변수
	
	int kor=100; // 전역변수
	int eng=99; // 클래스가 없어지지 않는 한은 변수값이 저장되있음
	
	public void test()
	{
		kor=99; // 메소드가 끝나면 사라짐
		System.out.println("test"+kor);
		int eng=88; // int로 새로 선언 전역변수와는 다른 eng변수값 
		System.out.println("test"+eng);
	}
	public void ttt()
	{
		kor=88;
		System.out.println("ttt"+kor);
		System.out.println("ttt"+eng);
	}
	public void tt()
	{
		System.out.println(kor);
	}

}
