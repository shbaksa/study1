package age_test;

import java.util.Scanner;

public class Age_Test {

	public static void main(String[] args) {
		// 콘솔창에서 나이를 입력받는다. 
		Scanner sc=new Scanner(System.in);
		System.out.print("당신의 나이 : ");
		int age=sc.nextInt();
		// 나이가 15이상이면 "입장하세요" 출력
		// 나이가 15미만이면 "담에 오세요" 출력
		if(age >= 15)
		{
		  System.out.println("입장하세요");
		}
		else
		{
		  System.out.println("담에 오세요");
		}

	}
}
