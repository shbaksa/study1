package abs;

public class Abstract_Main {

	public static void main(String[] args) {
		//Abstract abs=new Abstract();
		// 추상클래스는 객체 생성을 하지 못한다
		// 왜? 기능의 정의되지 않은 메소드가 존재하기 때문에
		Ateam a=new Ateam();
		a.kor=70;
		a.check();
		Bteam b=new Bteam();
		b.kor=92;
		b.check();
		Cteam c=new Cteam();
		c.kor=99;
		c.check();
		
		
		
		

	}

}
