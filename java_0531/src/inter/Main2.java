package inter;

public class Main2 {

	public static void main(String[] args) {
		 // 인터페이스는 객체생성 X
		Sungjuk su=new Sungjuk()
		{
			@Override
			public void average() {
				System.out.println("평균");
			}

			@Override
			public void total() {
				System.out.println("합계");
				output();
			}
			// 추가
			int num=100;
			public void output()
			{
				System.out.println(num);
			}
			// 임의 구현 방식에 추가된 변수나 메소드는 {}밖에서 사용불가
			// 내부에서만 사용가능
		};
		
		su.average();
		su.total();
		//su.output();
	}

}
