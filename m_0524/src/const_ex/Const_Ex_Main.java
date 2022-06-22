package const_ex;

import java.util.Scanner;

public class Const_Ex_Main {

	public static void main(String[] args) {
		// a 부터 b까지의 합을 구해서 출력하는 클래스
		// - a,b값을 생성자를 통해 초기화
		// 합을 구하는 메소드, 출력하는 메소드 2개를 생성
		Scanner sc=new Scanner(System.in);
		System.out.print("a : ");
		int a = sc.nextInt();
		System.out.print("b : ");
		int b = sc.nextInt();	
		Const_Ex ce= new Const_Ex(a,b);
		ce.cal();
		ce.output();
		
	}

}
