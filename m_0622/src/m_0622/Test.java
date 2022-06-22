package m_0622;

public class Test { //싱글톤
	
	private static Test t;
	
	private Test() // 생성자가 private
	{
		// main에서 new로 객체 생성 불가
	}
	// 객체를 생성하여 return 해주는 메소드를 만든다
	public static Test getinstance()
	{	// static 객체생성없이
		// main에서 객체생성을 위해서 리턴값으로 
		if(t == null) {
			t=new Test();
		}
		return t;
	}
	public void print()
	{
		System.out.println("하하");
	}
}
