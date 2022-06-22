package static_ex;

public class Static_Ex {
	int kor;
	static int eng;
	
	public void output()
	{
		System.out.println(kor);
		// 이미 메모리에 저장되서 메소드 실행전에 저장이 되있기때문에
		// static 변수 사용 가능
		System.out.println(eng);
		System.out.println("output");
	}
	public static void print()
	{
		// static 메소드에서는 static 변수만 사용가능하다
		//System.out.println(kor);
		System.out.println(eng);
		System.out.println("print");
	}

}
