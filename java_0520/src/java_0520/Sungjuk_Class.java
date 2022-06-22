package java_0520;

import java.util.Scanner;

public class Sungjuk_Class {
    // 객체지향
	// 클래스 => 속성과 메소드
	// 속성(변수)
	Scanner sc=new Scanner(System.in);
	int kor,eng,mat;
	int hap,avg;
	// 메소드(기능)
	
	public void test()
	{
		kor=sc.nextInt();
		eng=sc.nextInt();
		mat=sc.nextInt();
		
		hap=kor+eng+mat;
		avg=hap/3;
		
		System.out.println(hap+" "+avg);

	}
}
