package test;

import java.util.Scanner;

public class Test8 {

	public static void main(String[] args) {
		// 5명의 국어 성적을 입력받아서 총점과 평균 출력하기
		Scanner sc=new Scanner(System.in);
		System.out.print("학생수를 입력하세요 : ");
		int x=sc.nextInt();		
		int sum=0;
		double y=0;
		
		for(int i=0; i<x; i++)
		{
			System.out.print(i+1 + "번째학생 점수 : ");
			int score=sc.nextInt();			
			sum=score+sum;	
			y=sum;
		}
		
		System.out.println("총합 : " +sum);
		System.out.println("평균 : " +y/x);
		

		
		/*
		System.out.println("첫번째국어점수");
		int x=sc.nextInt();
		System.out.println("두번째국어점수");
		int y=sc.nextInt();
		System.out.println("세번째국어점수");
		int z=sc.nextInt();
		System.out.println("네번째국어점수");
		int w=sc.nextInt();
		System.out.println("다섯번째국어점수");
		int v=sc.nextInt();
		
		int b=x+y+z+w+v;
		int a=b/5;
		System.out.println("총점"+ b);
		System.out.println("평균"+ a);
		*/
		
		

	}

}
