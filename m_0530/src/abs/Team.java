package abs;

public class Team extends Abstract2 {

	Team(String name) // 매개변수값을 준다면 꼭 호출을 해줘야함
	{	// 묵시적으로 생략 => 부모클래스의 생성자를 호출 => super()
		super(name);
		// TODO Auto-generated constructor stub
	}
	/*
	Team() // 매개변수가 고정
	{
		super("홍길동"); // 부모클래스의 생성자
	}
	*/
	public void test()
	{
		System.out.println("재정의");
	}

}
