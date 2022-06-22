package m_0520;

import java.util.Scanner;

//자바는 실행하려면 main필요
public class Sungjuk_Class {
	// 객체지향 // 객채는 속성과 메소드로 구성되어있다 // 객채는 자동차면 속성은 바퀴수 메소드는 달린다
	// 클래스 => 속성과 메소드
	// 속성(변수) // 변수선언
	Scanner sc = new Scanner(System.in);
	int kor, eng, mat;
	int hap, avg;

	// 메소드(기능) // 동작
	public void test() {
		kor = sc.nextInt();
		eng = sc.nextInt();
		mat = sc.nextInt();

		hap = kor + eng + mat;
		avg = hap / 3;

		System.out.println(hap + " " + avg);
	}

}
