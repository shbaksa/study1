package first;

public class Sungjuk_Main {

	public static void main(String[] args) {
		Sungjuk s=new Sungjuk();
		// private인 변수에 값을 주기 위해서
		// public 인 메소드를 이용한다.
		//s.kor=99; private은 안되요
		s.input(80, 90, 70);
		s.cal();
		
		//System.out.println(s.hap);
		int avg=s.avgreturn();
		int hap=s.hapreturn();
		System.out.println(avg);
		System.out.println(hap);
	}

}
