package method_ex;

import java.util.Scanner;

public class Hap4 {
	// a 부터 b까지의 합을 구하기
	// 매개변수 O 리턴값 O
	Scanner sc=new Scanner(System.in);
	int a,b,hap;
	
	public void input(int a,int b)
	{
		this.a=a;
		this.b=b;
	}
	public void cal()
	{
		if(a<b)
		{
			for(int i=a;i<=b;i++)
			{
				hap+=i;
			}	
		}
	}
	public void cal1()
	{
		if(b<a)
		{
			for(int i=b;i<=a;i++)
			{
				hap+=i;
			}
		}
	}
	public int output()
	{
		return hap;		
	}
	

}