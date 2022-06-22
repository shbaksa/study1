package java_0520;

import java.util.Scanner;

public class Test1 {
	Scanner sc=new Scanner(System.in);
	int age;
	
	public void input()
	{
		System.out.println("나이 입력 : ");
		age=sc.nextInt();
	}
	
	public void cal()
	{
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
