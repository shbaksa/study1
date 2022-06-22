package inter;

public class Member implements Sungjuk , Student { 
	// 인터페이스는 다중 구현이 가능하다
	// 존재하는 추상메소드를 구현하여야 한다

	@Override
	public void average() {
		System.out.println("평균");
		
	}

	@Override
	public void student_info() {
		System.out.println("합계");
		
	}
	

}
