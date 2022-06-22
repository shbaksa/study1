package java_0523;

import java.util.Scanner;

public class Sungjuk2 {
    // 국,영,수 입력, 총점평균구하기
	// 매개변수 O, 리턴값 X
	int kor,eng,mat,hap,avg;
	public void input(int k,int e,int m) // 매개변수로 넘어오는 값을 저장
	{
		kor=k;
		eng=e;
		mat=m;
	}
	public void cal()  // 총점, 평균 구하기
	{
		hap=kor+eng+mat;
		avg=hap/3;
	}
	public void output() // 출력하기
	{
		System.out.println("총점 : "+hap);
		System.out.println("평균 : "+avg);
	}
}
