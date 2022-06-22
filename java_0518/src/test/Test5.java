package test;

import java.util.Scanner;

public class Test5 {

	public static void main(String[] args) {
		// 1부터 x까지의 합 구하기 (x는 Scanner로 입력받기)
		int hap=0;
		Scanner sc=new Scanner(System.in);
		int x=sc.nextInt();
		for(int i=1;i<=x;i++)
		{
			hap=hap+i;
		}
		System.out.println(hap);
		// a부터 b까지의 합 구하기 (a,b는 Scanner로 입력)
		int a=sc.nextInt();
		int b=sc.nextInt();
        // a가 b보다 크다면 값을 교환 후 실행하기
		hap=0; // 위에 사용된 변수를 재사용하기 위해 0으로 초기화
		// 만약 a가 b보다 크다면 => a와 b의 값을 교환
		if(a>b)
		{
		  int imsi;
		  imsi=a;
		  a=b;
		  b=imsi;
		}
           
		for(int i=a ;i<=b ;i++)
		{
			hap=hap+i;
		}
		System.out.println(hap);
	}

}
