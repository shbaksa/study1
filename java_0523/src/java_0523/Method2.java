package java_0523;

public class Method2 {
     // 전역변수, 지역변수
	int kor=100;
	int eng=99;
	
	public void test()
	{
		kor=99;
		System.out.println("test:"+kor);
		int eng=88;
		System.out.println("test:"+eng);
	}
	public void ttt()
	{
		kor=88;
		System.out.println("ttt:"+kor);
		System.out.println("ttt:"+eng);
	}
}
