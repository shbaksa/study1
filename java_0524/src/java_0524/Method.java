package java_0524;

public class Method {

	public void output()
	{
		System.out.println("출력");
	}
	
	public void test()
	{
		output();
		// 같은 클래스 내부에서는
		// 메소드이름만 부른다
	}
}
