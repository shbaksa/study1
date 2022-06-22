package method_ex;

public class Sungjuk_Main {

	public static void main(String[] args) {
		
		// Sungjuk1		
		/*
		Sungjuk1 s1=new Sungjuk1();
		s1.input();
		s1.cal();
		s1.output();
		*/
		// Sungjuk2
		/*
		Sungjuk2 s2=new Sungjuk2();
		// s2.kor=100;=> 이렇게는 잘안씀
		s2.input(80,90,70);
		s2.cal();		
		s2.output();
		*/
		// Sungjuk3
		/*
		Sungjuk3 s3=new Sungjuk3();
		s3.input();
		s3.cal();
		//System.out.println(s3.hap); 이렇게 해도 합과 평균은 나오지만
		//System.out.println(s3.avg); 직접 접근하는 값은 사용안한다 private으로 쓰면 합과 평균에서 에러나옴
		int hap=s3.hapreturn(); 
		int avg=s3.avgreturn(); 
		// 리턴해주는 값은 항상 같은 자료형으로 변수 선언
		System.out.println("총점 : "+hap);
		System.out.println("평균 : "+avg);
		*/
		// Sungjuk4
		
		Sungjuk4 s4=new Sungjuk4();
		s4.input(60, 70, 90);
		s4.cal();
		int hap=s4.hapreturn();
		int avg=s4.avgreturn();
		System.out.println("총점 : "+hap);
		System.out.println("평균 : "+avg);

	}

}
