package java_0520;

import java.util.Scanner;

public class Sungjuk_Class2 {
    // 속성
	Scanner sc=new Scanner(System.in);
	int kor,eng,mat;
	int hap,avg;
	
	// 메소드
	// 점수입력
	public void input()
	{
		int tt;
		kor=sc.nextInt();
		eng=sc.nextInt();
		mat=sc.nextInt();	
	}
	// 계산
	public void cal()
	{
		hap=kor+eng+mat;
		avg=hap/3;
	}
	// 출력
	public void output()
	{
		System.out.println(hap+" "+avg);
		
	}
}
