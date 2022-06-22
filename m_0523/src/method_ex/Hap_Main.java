package method_ex;

import java.util.Scanner;

public class Hap_Main {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		// Hap1
		/*
		Hap1 h1=new Hap1();		
		h1.input();
		h1.cal();
		h1.output();
		*/
		// Hap2
		/*
		Hap2 h2=new Hap2();
		System.out.print("a의 값을 입력하세요 : ");
		int aa=sc.nextInt();
		System.out.print("b의 값을 입력하세요 : ");
		int bb=sc.nextInt();
		h2.input(aa,bb);
		h2.cal();
		h2.output();
		*/
		// Hap3
		/*
		Hap3 h3=new Hap3();
		h3.input();
		h3.cal();
		int hap=h3.output();
		if(h3.a < h3.b)
		{
		System.out.print(h3.a+"부터"+ h3.b+"까지의 합 : "+hap);
		}
		else
		{
		System.out.print(h3.b+"부터"+ h3.a+"까지의 합 : "+hap);
		}
		*/
		// Hap4
		/*
		Hap4 h4=new Hap4();
		System.out.print("a의 값을 입력하세요 : ");
		int a=sc.nextInt();
		System.out.print("b의 값을 입력하세요 : ");
		int b=sc.nextInt();
		h4.input(a,b);
		h4.cal();
		h4.cal1();
		int hap=h4.output();
		if(a<b)
		{
			System.out.println(a+"부터"+b+"까지 합 : "+hap);
		}
		else
		{
			System.out.println(b+"부터"+a+"까지 합 : "+hap);
		}
		*/
		// Hap5
		// 최대한 줄여서 만들어보기
		
		Hap5 h5=new Hap5();
		System.out.print("a의 값을 입력하세요 : ");
		int a=sc.nextInt();
		System.out.print("b의 값을 입력하세요 : ");
		int b=sc.nextInt();
		// ※ h5.cal(a,b); //2번 돌았음
		
		if(a<b)
		{
			System.out.println(a+"부터"+b+"까지 합 : "+h5.output(a, b));
		}												// 여기서 값이 들어 감
		else
		{
			System.out.println(b+"부터"+a+"까지 합 : "+h5.output(a, b));
		}
		
		
		
		
		

	}

}

