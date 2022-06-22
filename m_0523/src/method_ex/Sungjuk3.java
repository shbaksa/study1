package method_ex;

import java.util.Scanner;

public class Sungjuk3 {
	// 국,영,수 입력, 총점평균 구하기
	// 매개변수 X, 리턴값 O
	Scanner sc=new Scanner(System.in);
	int kor,eng,mat,hap,avg;	
	public void input() // 성적입력
	{
		Scanner sc=new Scanner(System.in);
		kor=sc.nextInt();
		eng=sc.nextInt();
		mat=sc.nextInt();
	}
	public void cal() // 총점,평균구하기
	{
		hap=kor+eng+mat;
		avg=hap/3;
	}
	// 출력하지 않고 값을 리턴해주기
	// 총점의 값을 리턴해주는 메소드
	public int hapreturn() // 출력하기
	{
		return hap;
	}
	// 평균의 값을 리턴해주는 메소드
	public int avgreturn() // 리턴값에 리턴해주는 값의 자료형을 입력
	{
		return avg;
	}

}