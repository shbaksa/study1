package m_0517;

import java.util.Scanner;

public class V2 {

	public static void main(String[] args) {
		// 국어, 영어, 수학 3과목의 값을 입력받기
		int x,y,z; //동일한 자료형 변수는 ,로서 구분하여 1줄에 선언이 가능
		double w,q;
				
		Scanner sc=new Scanner(System.in);
		// 1. 입력할때 무엇을 입력하는지 몰라요
		System.out.print("국어 : ");
		x=sc.nextInt();
		System.out.print("영어 : ");
		y=sc.nextInt();
		System.out.print("수학 : ");
		z=sc.nextInt();	
		w=x+y+z;
		q=w/3;
		// 점수의 합을 출력하기		
		System.out.println("국어 : "+x);		
		System.out.println("영어 : "+y);
		System.out.println("수학 : "+z);
		System.out.print("성적합계 : ");
		System.out.println(w);
		// 점수의 평균을 출력하기		
		
		System.out.println("평균점수 : " + q);
		

	}

}
