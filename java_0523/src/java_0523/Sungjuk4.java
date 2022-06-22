package java_0523;

import java.util.Scanner;

public class Sungjuk4 {
    // 국,영,수 입력, 총점평균구하기
	// 매개변수 O, 리턴값 O
	int kor,eng,mat,hap,avg;
	public void input(int k,int e, int m) // 성적입력
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
	// 출력하지 않고 값을 리턴해주기
	// 총점의 값을 리턴해주는 메소드
	public int hapreturn()
	{
		return hap;
	}
	// 평균의 값을 리턴해주는 메소드
	public int avgreturn()
	{
		return avg;
	}
}









