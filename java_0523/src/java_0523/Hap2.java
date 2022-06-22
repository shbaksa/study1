package java_0523;

import java.util.Scanner;

public class Hap2 {
	// a부터 b까지의 합을 구하기
	// 매개변수 O  리턴값 X
	int a,b,hap;
	public void input(int aa,int bb) // 매개변수로 가져오기
	{
       a=aa;
       b=bb;
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
