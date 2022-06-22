package inter;

public class Main {

	public static void main(String[] args) {
		// 인터페이스는 객체를 생성하지 못한다..
		//Sungjuk su=new Sungjuk(); 
        // 인터페이스는 구현한 클래스의 객체를 생성 후 사용한다.
		Sungjuk_Imp si=new Sungjuk_Imp();
		si.average();
		si.total();
		si.output();
	}

}
