package java0520;

import java.util.Scanner;

public class method_1 {
	
	Scanner sc = new Scanner(System.in);
	int age;
	
	public void input()
	{
		System.out.println("나이를 입력하시오.");
		age = sc.nextInt();
	}
			
	public void output()
	{			
		if(age >= 20)
		{
			System.out.println("성인입니다.");
		}
		else
		{
			System.out.println("미성년입니다.");
		}
	}
}
	


