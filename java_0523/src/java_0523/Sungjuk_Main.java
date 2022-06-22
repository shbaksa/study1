package java_0523;

public class Sungjuk_Main {

	public static void main(String[] args) {
		//Sungjuk1 s1=new Sungjuk1();
		//s1.input();
		//s1.cal();
		//s1.output();
		
		//Sungjuk2 s2=new Sungjuk2();
		//s2.kor=100;
		//s2.input(80,90,70);
		//s2.cal();
		//s2.output();
		
		//Sungjuk3 s3=new Sungjuk3();
		//s3.input();
		//s3.cal();
		//System.out.println(s3.hap);
		//System.out.println(s3.avg);
		//int hap=s3.hapreturn();
		//int avg=s3.avgreturn();
		//System.out.println("총점 : "+hap);
		//System.out.println("평균 : "+avg);
		
		Sungjuk4 s4=new Sungjuk4();
		s4.input(60, 70, 90);
		s4.cal();
		int hap=s4.hapreturn();
		int avg=s4.avgreturn();
		System.out.println("총점 : "+hap);
		System.out.println("평균 : "+avg);
				
		
		
		
		
		
		
		
		
		
		
	}

}
