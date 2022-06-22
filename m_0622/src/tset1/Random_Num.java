package tset1;

import java.util.Random;
import java.util.Scanner;

public class Random_Num {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Random rand = new Random();
		Scanner sc = new Scanner(System.in);
		
		System.out.print("a : ");
		int a = sc.nextInt();
		System.out.print("b : ");
		int b = sc.nextInt();
		
		int num=0;
		int imsi;
		if(a>b)
		{
			imsi=a;
			a=b;
			b=imsi;
		}
		for(int i=1;i<=6;i++) {
		num = rand.nextInt(a,b+1);
		System.out.println(num);
		}

	}

}
