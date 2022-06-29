package java0516;

import java.util.Scanner;

public class val3 {
	public static void main(String[] args) {
		
		/*int a=3;
		String b="안녕";
		
		int c=a+6;
		int d=c/a;
		int e=c%2;
	
		System.out.println(c);			
		System.out.println(d);
		System.out.println(e);*/
		
		int aa,cc;
		String bb;
		
		Scanner sc=new Scanner(System.in);
		
		System.out.println("첫번째숫자");
		aa = sc.nextInt();	
		System.out.println("두번째숫자");
		cc = sc.nextInt();
		System.out.println("입력완료");
		bb = sc.next();
									
		System.out.println("더하기"+"="+(aa+cc));
		System.out.println("빼기"+"="+(aa-cc));
		System.out.println("곱하기"+"="+(aa*cc));
		System.out.println("나누기"+"="+(aa/cc));
		
	}
	
}
