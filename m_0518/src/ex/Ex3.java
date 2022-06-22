package ex;

import java.util.Scanner;

public class Ex3 {

	public static void main(String[] args) {
		// 두개의 숫자를 입력받기
		// 큰수에서 작은수를 뺀 값을 출력하기
		
		Scanner sc=new Scanner(System.in);
		System.out.print("첫번째 숫자를 입력하세요 : ");
		int x=sc.nextInt();
		System.out.print("두번째 숫자를 입력하세요 : ");
		int y=sc.nextInt();
		
		if (x>y)
		{
			System.out.println(x-y);
		} 
		else
		{
			System.out.println(y-x);
		}

	}

}
