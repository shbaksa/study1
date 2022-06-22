package jave_0516;

import java.util.Scanner;

public class Input {

	public static void main(String[] args) {
		// 콘솔장 입력
		Scanner sc=new Scanner(System.in);
		
		// 콘솔창에서 숫자를 입력
		int aa;
		aa=sc.nextInt();
		// 콘솔창에서 문자를 입력
		String bb;
		bb=sc.next();
	
		// 콘솔창 출력
		System.out.println(aa);
		System.out.println(bb);

	}

}
