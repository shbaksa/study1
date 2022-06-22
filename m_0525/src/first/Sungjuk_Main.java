package first;

import java.util.Scanner;

public class Sungjuk_Main {

	public static void main(String[] args) {
		Sungjuk s = new Sungjuk();
		// private인 변수에 값을 주기 위해서
		// public인 메소드를 이용한다
		// s.kor=99; private은 안된다 에러
		Scanner sc=new Scanner(System.in);
		
		System.out.print("국어점수 입력 : ");
		int kor=sc.nextInt();
		System.out.print("영어점수 입력 : ");
		int eng=sc.nextInt();
		System.out.print("수학점수 입력 : ");
		int mat=sc.nextInt();
		s.input(kor, eng, mat);
		s.cal();
		// System.out.println(s.hap); 에러
				
		System.out.println("합 : "+s.hapreturn());
		System.out.println("평균 : "+s.avgreturn());

	}

}
