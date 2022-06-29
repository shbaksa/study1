package java0523;

import java.util.Scanner;

public class Ex_5 {
	
	Scanner sc = new Scanner(System.in);
	
	int[] input = new int[3]; 
	
	String a;
	char b;
		
	public int[] input()
	{
		System.out.println("첫번째 숫자를 입력하세요.");
		input[1] = sc.nextInt();
		System.out.println("두번째 숫자를 입력하세요.");
		input[2] = sc.nextInt();
		
		return input;
	}
	
	public int cal()
	{
		int a = input[1];
		int b = input[2];
		int c = 0;
		
		for(int i=a; i<=b ; i++)
		{
			c += i;
		}
		
		return c;
	}
	
	public void output()
	{
		System.out.println(input[1] + " 부터 "+ input[2] +" 까지의 합은 "  + cal());
	}
	
	
	public void t_1(String a, char b)
	{
		this.a=a;
		this.b=b;
		System.out.println(a + " " + b);
	}
	
	
	
	
}
	
	
	
	
	

