package jave_0516;

import java.util.Scanner;

public class Input2 {
	public static void main(String[] args) {
		// kor, eng 숫자변수를 만들기 
		
		int kor; // int kor,eng;
		int eng;
		
		//Scanner를 통해 값 입력하기
		
		Scanner sc=new Scanner(System.in);
		kor=sc.nextInt();
		eng=sc.nextInt();
				
		// 출력 : kor과 eng값을 합하여 출력하기
		
		System.out.println(kor+eng);
		
		
	}

} 
