package java0518;

import java.util.Scanner;

public class Test1 {

	public static void main(String[] args) {
		// 콘솔창에서 나이를 입력받는다. 
		// 나이가 15이상이면 "입장하세요" 출력
		// 나이가 15미만이면 "담에 오세요" 출력
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("나이를 입력하세요.");
		int age = sc.nextInt();
		
		if(age>15)
		{
			System.out.println("입장하세요");
		}
		else
		{
			System.out.println("다음에오세요");
		}
		
	}
	
}


