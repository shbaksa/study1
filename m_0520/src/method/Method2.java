package method;

import java.util.Scanner;

public class Method2 {
	
	 
	Scanner sc=new Scanner(System.in);
	 
	 //1. 리턴값 X 매개변수 X
	public void jmsu()
	{
		int kor=sc.nextInt(); int eng=sc.nextInt();
		int hap=kor+eng; int avg=hap/2;
		System.out.println("합 : "+hap+ " 평균 : "+avg);			
	}	
	 //2. 리턴값 O 매개변수 X
	public int jmsu1()
	{
		int kor=sc.nextInt(); int eng=sc.nextInt();
		int hap=kor+eng; 
		return hap; 
	}
	public int jmsu2()
	{
		int kor=sc.nextInt(); int eng=sc.nextInt();
		int hap=kor+eng;  int avg=hap/2;
		return avg;
	}
	
	 //3. 리턴값 X 매개변수 O
	public void jmsu3(int kor, int eng)
	{
		int hap=kor+eng ,avg=hap/2;
		System.out.println("합 : "+hap+" 평균 : "+avg);
		
	}	
	 //4. 리턴값 O 매개변수 O
	public int jmsu4(int kor, int eng)
	{
		int hap=kor+eng;
		return hap;
	}
	public int jmsu5(int hap)
	{
		int avg=hap/2;
		return avg;
	}

}
