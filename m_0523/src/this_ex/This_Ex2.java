package this_ex;

public class This_Ex2 {
	// this 속성과 메소드를 다 부를수 있다.
	int kor=100; // 전역변수
	public void test()
	{
		int kor=99; // 지역변수
		System.out.println(kor); // 지역변수 호출
		System.out.println(this.kor); // 전역변수 호출
		output(); //생성자할떄
		
	}
	public void output()
	{
		System.out.println("output");
		this.check(); //생성자할때
	}
	public void check()
	{
		System.out.println("check");
	}

}
// 매개변수와 리턴

