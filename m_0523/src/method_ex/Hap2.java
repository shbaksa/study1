package method_ex;

import java.util.Scanner;

public class Hap2 {
	// a 부터 b까지의 합을 구하기
	// 매개변수 O 리턴값 X
	Scanner sc=new Scanner(System.in);
	int a,b,hap;
	
	public void input(int aa,int bb)
	{		
		a=aa;	
		b=bb;		
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
		else
		{
			for(int i=b;i<=a;i++)
			{
				hap+=i;
			}
		}
		
	}
	public void output()
	{
		System.out.print(a+"부터"+ b+"까지의 합 : "+hap);
		
	}
	

}