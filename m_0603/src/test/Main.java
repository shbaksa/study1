package test;

import java.util.Random;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {

		
		Random rand=new Random();
		// rand.nextInt(1,10) 1~9까지
		/* a에서 b까지의 임의의 수 
			1.	rand.nextInt(a,b+1) 
			
			2.	int num=rand.nextInt(b-a+1)
				num=num+a;
		*/
		int a=100;
		int b=200;
		
		int num=rand.nextInt(b-a+1); // 0~2 // 0~100
		num=num+100; // 1~3 // num+100 // 100~200
		
		//System.out.println(num);
		
		// Math.random();
		
		int num2=(int)(Math.random()*45); //0~44까지
		
		num2=num2+1; // 1부터 45까지
		
		// a~b
		int a1=100;
		int b1=200;
		
		int num3=(int)(Math.random()*(b1-a1+1)); // 0부터 100까지
		num3=num3+a1; // a~b까지
		System.out.println(num3);
	
		/*
		Sungjuk s= new Sungjuk();
		
		s.input();
		s.cal();
		s.output();
		
		
		
		Hap h=new Hap();
		
		h.hap();
		
		h.hap1();
		
		
		
		
		Random_Num rn= new Random_Num();	
		//rn.random();
		
		rn.random1();
		*/
		
		
		
		
		
		
		
		
	}

}
