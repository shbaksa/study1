package java_0517;

import java.util.Scanner;

public class Input2 {

	public static void main(String[] args) {
		//  국어, 영어, 수학 3과목의 값을 입력받기
        int kor,eng,mat; // 동일한 자료형 변수는 ,로서 구분하여 1줄에 선언이 가능
        
        Scanner sc=new Scanner(System.in);
        // 1. 입력할때 무엇을 입력하는지 몰라요
        System.out.print("국어 : ");
        kor=sc.nextInt();
        System.out.print("영어 : ");
        eng=sc.nextInt();
        System.out.print("수학 : ");
        mat=sc.nextInt();
        
		// 점수의 합을 출력하기
        System.out.print("성적합계 : ");
		System.out.println(kor+eng+mat);
		
		// 점수의 평균을 출력하기
		System.out.println("성적평균 : "+(kor+eng+mat)/3);
		
	}

}
