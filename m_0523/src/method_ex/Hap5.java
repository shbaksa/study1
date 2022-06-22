package method_ex;

import java.util.Scanner;

public class Hap5 {
	// a 부터 b까지의 합을 구하기
	// 매개변수 O 리턴값 O
	Scanner sc = new Scanner(System.in);
	int a, b, hap;

	public int output(int a, int b) 
	{
		// ※ hap = 0; 메인에서 h5.cal(a,b) 값을 한번 더 적을경우 메소드 안에서 hap값을 0으로 초기화를 해주면됨
		if (a < b) 
		{
			for (int i = a; i <= b; i++) 
				{
					hap += i;
				}
		}
		else 
		{
			for (int i = b; i <= a; i++) 
				{
					hap += i;
				}
		}
		return hap;
	}
}
