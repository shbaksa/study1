package method_over;

public class Method {
	
	public void output()
	{
		System.out.println("출력");
	}
	
	public void test()
	{
		output(); // 내부에서는 메소드 이름을 바로 입력하면 사용가능
		// 같은 클래스 내부에서는
		// 메소드 이름만 부른다
	}

}
