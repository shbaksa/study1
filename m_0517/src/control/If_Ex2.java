package control;

import java.util.Scanner;

public class If_Ex2 {
	public static void main(String[] args) {
		// 나이를 입력받아서 20살 이상이면
		// "어서오세요" 출력
		// 20살 미만이면 "담에 오세요"
		
		Scanner sc=new Scanner(System.in);
		System.out.print("나이를 입력하세요 : ");
		int age=sc.nextInt();
		
		if (age>=20)
		{
			System.out.println("어서오세요");			
		} 
		else
		{
			System.out.println("담에오세요");
		}
	}

}
