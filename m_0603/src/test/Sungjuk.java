package test;

import java.util.Scanner;

public class Sungjuk {
	
	int kor,eng,mat,hap,avg;
	Scanner sc=new Scanner(System.in);
	public void input()	
	{
		System.out.print("국어점수 입력 : ");
		kor=sc.nextInt();
		System.out.print("영어점수 입력 : ");
		eng=sc.nextInt();
		System.out.print("수학점수 입력 : ");
		mat=sc.nextInt();
	}
	public void cal()
	{
		hap=kor+eng+mat;
		avg=hap/3;
	}
	public void output()
	{
		System.out.println("평균 : "+avg);
	}

}
