package test;

import java.util.Scanner;

public class Hap {
	
	int a,b,hap;
	Scanner sc=new Scanner(System.in);
	
	public void hap()
	{
		for(int i=1;i<=100;i++)
		{
			if(i%2==0)
			{
				hap+=i;
			}
		}
		System.out.println("1부터100까지 짝수의 합 : "+hap);
	}
	public void hap1()
	{
		hap=0;
		System.out.print("a의값 : ");
		a=sc.nextInt();
		System.out.print("b의값 : ");
		b=sc.nextInt();
		
		if(a<b)
			{
			for(int i=a;i<=b;i++)
			{
				hap+=i;
			}
			System.out.println(a+"부터 "+b+"까지의 합"+hap);
			}
		else
		{
			
			for(int i=b;i<=a;i++)
			{
				hap+=i;
			}
			System.out.println(b+"부터 "+a+"까지의 합"+hap);
		}
		
		
	}

}
