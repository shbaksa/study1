package inter;

public class Sungjuk_Imp implements Sungjuk{
	// 구현클래스에 무조건 인터페이스의 추상메소드를 재정의 하여야 한다..
	@Override
	public void average() {
		 System.out.println("평균");		
	}

	@Override
	public void total() {
		 System.out.println("합계");		
	}
   
	int num=100;
	public void output()
	{
		System.out.println(num);
	}
}
