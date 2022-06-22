package method_ex;

import java.util.Scanner;

public class Method_Ex {
	// * 국,영,수 성적을 입력하여 평균과 총점을 구해주는 프로그램 작성하기
	// 4개의 클래스를 만들어서 작업
	Scanner sc=new Scanner(System.in);
	// 1. 매개변수 X, 리턴값 X
			// 성적 총점,평균
	int kor,eng,mat,hap,avg;	
	public void jusm()
	{
		System.out.println("국,영,수 점수를 입력하세요");
		kor=sc.nextInt(); eng=sc.nextInt(); mat=sc.nextInt();
		
		hap=kor+eng+mat;
		avg=hap/3;
		
		System.out.println("합 : "+hap);
		System.out.println("평균 : "+avg);
	}
	
	// 2 매개변수 O, 리턴값 X
	public void jusm1(int kor, int eng, int mat)
	{		
		hap=kor+eng+mat;
		avg=hap/3;
		System.out.println("합 : "+hap);
		System.out.println("평균 : "+avg);
		
	}
	
	// 3 매개변수 X, 리턴값 O // 2개의 메소드가 필요
	public void input()
	{
		System.out.println("국,영,수 점수를 입력하세요");
		kor=sc.nextInt(); eng=sc.nextInt(); mat=sc.nextInt();	
	}
	public int jusm2() 
	{	
		hap=kor+eng+mat;
		return hap;
	}
	public int jusm3()
	{
		avg=hap/3;
		return avg;		
	}
	
	// 4 매개변수 O, 리턴값 O
	public int jusm4(int kor, int eng, int mat)
	{
		hap=kor+eng+mat;
		return hap;
	}
	public int jusm5(int hap)
	{
		avg=hap/3;
		return avg;
	}
	

}
