package test;

import java.util.Scanner;

public class Test5 {

	public static void main(String[] args) {
		// 1부터 x까지의 합 구하기 (x는 Scanner로 입력받기)
		Scanner sc=new Scanner(System.in);
		System.out.println("x값을 입력하세요");
		
		int x=sc.nextInt();
		int hap=0;
		
		for(int i=0; i<=x ; i++)
		{
			hap=hap+i;
					
		}
			System.out.println(hap);
		// a부터 b까지의 합 구하기 (a,b는 Scanner로 입력)	
		System.out.println("a값 입력");
		int a=sc.nextInt();
		System.out.println("b값 입력");
		int b=sc.nextInt();
		int hap1=0;
		for(int i=a; i<=b ; i++)
		{
			
			hap1=hap1+i;
		}
		System.out.println(hap1);
		
		// a가 b보다 크다면 값을 교환 후 실행하기
		System.out.println("c값 입력");
		int c=sc.nextInt();
		System.out.println("d값 입력");
		int d=sc.nextInt();
		int hap2=0;
		
		if(c<d)
		{
			for(int i=c; i<=d; i++ )
			{
				hap2=hap2+i;
			}
		}
		else
		{
			for(int i=d; i<=c; i++)
			{
				hap2=hap2+i;
			}
		}
		System.out.println(hap2);
		

		}
		
		
		
	   

	}


