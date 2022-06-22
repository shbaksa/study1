package java_0523;

import java.util.Scanner;

public class Hap1 {
    // a부터 b까지의 합을 구하기
	// 매개변수 X  리턴값 X
	int a,b,hap;
	public void input()
	{
		Scanner sc=new Scanner(System.in);
		a=sc.nextInt();
		b=sc.nextInt();
	}
	public void cal()
	{
		for(int i=a;i<=b;i++)
		{
			hap=hap+i;
		}
	}
	public void output()
	{
		System.out.println("합 : "+hap);
	}
	
	
}
