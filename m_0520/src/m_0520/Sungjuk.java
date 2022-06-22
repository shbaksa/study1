package m_0520;

import java.util.Scanner;

public class Sungjuk {
	// static 객체생성없이 사용가능 // String[] args 매개변수
	public static void main(String[] args) {
		// 국,영,수 과목을 입력받고 총점과 평균을 구하라
		Scanner sc = new Scanner(System.in);
		int kor, eng, mat;

		kor = sc.nextInt();
		eng = sc.nextInt();
		mat = sc.nextInt();

		int hap, avg;

		hap = kor + eng + mat;
		avg = hap / 3;

		System.out.println(hap + " " + avg);

	}

}
