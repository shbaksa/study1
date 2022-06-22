package method;

import java.util.Scanner;

public class Method1_Main {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		
		Method1 m1=new Method1();
		
		// 1. 리턴값 X 매개변수 X
		/*
		m1.start();
		*/
		
		// 2. 리턴값 X 매개변수 O	
		/*
		m1.start2(1, 100); // 종료된 후에는 hap을 다시 구할수 없다
		
		int aa=sc.nextInt(); int bb=sc.nextInt();
		int a1=1;		
		int b1=100;				
		m1.start2(a1, b1);
		m1.start2(aa, bb);
		*/
		
		// 3. 리턴값 O 매개변수 X
		/*
		int hap = m1.start3(); // 받을 값을 왼쪽에 리턴값을 변수에 지정해주어야 한다
		System.out.println(hap); // public int start3() 에 있는 hap이랑 main에 있는 hap이랑 틀리다 (동명이인생각)
		
		System.out.println(" ");
		System.out.println("하하하");
		
		System.out.println(hap);
		*/
		// 4. 리턴값 O 매개변수 O
		int aa=sc.nextInt(); int bb=sc.nextInt();		
		int hap=m1.start4(aa, bb);
		System.out.println(hap);			
		int hap2=m1.start4(1, 111);
		System.out.println(hap2); 
		


	}

}
