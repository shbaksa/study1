package control;

import java.util.Scanner;

public class If_ex1 {

	public static void main(String[] args) {
		// 영어점수를 콘솔창에서 입력받고 60점 이상이면 합격, 미만이면 불합격 출력하기
				
		int eng;
		Scanner sc=new Scanner(System.in);
		System.out.print("영어점수 : ");
		eng=sc.nextInt(); // 한번에 int eng=sc.nextInt();
		
		System.out.println("영어점수 : "+eng);

		if (eng>=60)
		{
			System.out.println("합격입니다");			
		} //if
		else 
		{
			System.out.println("불합격입니다");
		} //else

	} //main

} //class
