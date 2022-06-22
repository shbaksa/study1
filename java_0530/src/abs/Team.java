package abs;

public class Team extends Abstract2{

	 Team(String name)
	 {   // 묵시적으로 생략 => 부모클래스의 생성자를 호출 => super()
		 super(name); // 부모클래스의 생성자
	 }
	 public void test()
	 {
		 System.out.println("재정의");
	 }
      
}
