package method_ex;

import java.awt.font.NumericShaper;
import java.util.Scanner;

public class Method_Ex_Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc=new Scanner(System.in);
		Method_Ex me=new Method_Ex();
		// 1번
		/* 
		me.jusm();
		*/
		
		// 2번
		/* 
		System.out.println("국,영,수 점수를 입력하세요");
		int kor=sc.nextInt(),eng=sc.nextInt(),mat=sc.nextInt();
		me.jusm1(kor,eng,mat);
		*/
		// 3번
		me.input();
		int hap=me.jusm2();
		int avg=me.jusm3();
		System.out.println("합 : "+hap);
		System.out.println("평균 : "+avg);
		
		// 4번
		/*
		System.out.print("국어점수를 입력하세요 : ");
		int kor=sc.nextInt();
		System.out.print("영어점수를 입력하세요 : ");
		int eng=sc.nextInt();
		System.out.print("수학점수를 입력하세요 : ");
		int mat=sc.nextInt();
		int hap=me.jusm4(kor, eng, mat);
		System.out.println("합은 : "+hap);
		int avg=me.jusm5(hap);
		System.out.println("평균 : "+avg);
		*/
		
		
		
	}

}
