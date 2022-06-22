package static_ex;

public class Static_Main {

	public static void main(String[] args) {
		// static이 부여된 변수와 메소드는
		// 객체생성(instance) 없이 사용가능
		// static => 정적 (정적변수 정적메소드)
		// 사용방법 => 클래스명.static변수
		//			 클래스명.static메소드
		Static_Ex.eng=99;
		Static_Ex.print();
		
		/* static이 없는 메소드 객체 생성이 안되서 에러
		Static_Ex.kor=88;
		Static_Ex.output();
		*/
		//kor,output()는 static X => 객체 생성후 사용		
		Static_Ex se=new Static_Ex();
		se.kor=88;
		se.output();

	}

}
