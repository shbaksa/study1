package java_0523;

import java.util.Scanner;

public class Sungjuk1 {
    // 국,영,수 입력, 총점평균구하기
	// 매개변수 X, 리턴값 X
	int kor,eng,mat,hap,avg;
	public void input() // 성적입력
	{
		Scanner sc=new Scanner(System.in);
		kor=sc.nextInt();
		eng=sc.nextInt();
		mat=sc.nextInt();
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
