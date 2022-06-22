package m_0520;

import java.util.Scanner;

public class Sung {
	// 속성
	Scanner sc = new Scanner(System.in);
	int kor, eng, mat;
	int hap, avg;

	// 메소드 Sungjuk_Class에 있는 public test 를 3개로 나눔
	// 점수 입력
	public void input() {
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
