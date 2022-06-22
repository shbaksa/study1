package method;

import java.util.Scanner;

public class Method2_Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc=new Scanner(System.in);
		Method2 m2=new Method2();
		//1. 리턴값 X 매개변수 X
		/*
		m2.jmsu();
				
		//2. 리턴값 O 매개변수 X
		int hap=m2.jmsu1();
		System.out.println("합 : "+hap);
		int avg=m2.jmsu2();
		System.out.println("평균 : "+avg);
		//3. 리턴값 X 매개변수 O
		int aa=sc.nextInt(), bb=sc.nextInt();
		m2.jmsu3(aa,bb);
		*/
		//4. 리턴값 O 매개변수 O
		int a1=sc.nextInt(), b1=sc.nextInt();
		int hap=m2.jmsu4(a1,b1);
		System.out.println("합 : "+hap);
		int avg=m2.jmsu5(hap);
		System.out.println("평균 : "+avg);
		
		
	}
	

}
