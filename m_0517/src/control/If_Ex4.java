package control;

import java.util.Scanner;

public class If_Ex4 {
					//다중if문
	public static void main(String[] args) {
		// 실행할 문장이 3개 이상일 경우 > if를 추가하여 처리
		// 국어점수를 입력받고 A,B,C,D,F로 출력하기
		Scanner sc=new Scanner(System.in);
		System.out.print("영어점수 : ");
		int kor=sc.nextInt();
		
		if (kor >=90)
		{
			System.out.println("국어는 A입니다");
		} 
		else if (kor >=80)
		{			
			System.out.println("국어는 B입니다");
		}
		else if (kor >=70)
		{
			System.out.println("국어는 C입니다");
		}
		else if (kor >=60)
		{
			System.out.println("국어는 D입니다");
		}
		else
		{
			System.out.println("국어는 F입니다");
		}
		
	}

}
