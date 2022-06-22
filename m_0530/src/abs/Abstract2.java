package abs;

public abstract class Abstract2 {
	// 추상클래스의 생성자(매개변수)
	Abstract2(String name)
	{
		System.out.println("부모 "+name);
	}
	
	abstract void test();
	// 기능이 없는 메소드 추상메소드
	// 사용할려면 상속받은곳에서 오버라이딩으로 사용
	// 조금씩 다른 메소드를 같은곳에서 사용하고 싶을때 여러군대 상속해서 사용

}
