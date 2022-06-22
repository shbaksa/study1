package m_0520;

import java.util.Scanner;

public class Sungjuk_Class2 {
	// 속성 Sungjuk_Class2 sc=*new Sungjuk_Class2();* 에서 속성이 실행된다
	Scanner sc = new Scanner(System.in);
	int kor, eng, mat;
	int hap, avg;

	// 메소드 Sungjuk_Class에 있는 public test 를 3개로 나눔
	// 점수 입력
	public void input() {
		int tt; // 변수 색깔이 다름 전역변수 지역변수 ?? 몰루
		kor = sc.nextInt();
		eng = sc.nextInt();
		mat = sc.nextInt();
	}

	// 계산
	public void cal() {
		hap = kor + eng + mat;
		avg = hap / 3;
	}

	// 출력
	public void output() {
		System.out.println(hap + " " + avg);
	}
}
