package inter;

public abstract class Abs_Class implements Sungjuk {
	// 추상메소드를 다쓰지않고 남길때 해당클래스도 추상클래스로 만들고 나머지쓸때 상속받아서 사용
	@Override
	public void average() {
		System.out.println("평균");
		
	}

	
}
