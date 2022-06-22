package m_0519;

import java.util.Scanner;

public class Array_Ex3 {

	public static void main(String[] args) {
		// 1학년의 성적을 입력할때 배열을 사용할 경우
		// 1반 : 4명, 2반 : 5명 , 3반 : 2명, 4반 : 8명

		// 반별 국어점수를 입력받는다
		// 인원수를 콘솔에서 입력받기
		Scanner sc = new Scanner(System.in);

		for (;;) {
			System.out.println("진행하시려면 아무숫자를 입력하세요");
			System.out.println("종료를원하시면 0");
			if (sc.nextInt() != 0) {
				System.out.print("반을 입력하세요 : ");
				int x = sc.nextInt();
				System.out.print("학생수를 입력하세요 : ");
				int y = sc.nextInt();

				int[] sco = new int[y];
				int hap = 0;
				double avg = 0;
				int max = sco[0];
				int min = 9999;
				int maxp = 0, minp = 0;

				for (int i = 0; i < sco.length; i++) {
					System.out.print(i + 1 + "번째 점수 : ");
					sco[i] = sc.nextInt();
					hap = sco[i] + hap;
					avg = hap / y;

					if (sco[i] > max) {
						max = sco[i];
						maxp = i + 1;
					}
					if (sco[i] < min) {
						min = sco[i];
						minp = i + 1;
					}
				}

				System.out.print("각학생의 점수는 : ");

				for (int i = 0; i < sco.length; i++) {
					System.out.print(i + 1 + "번째점수 : " + "'" + sco[i] + "'" + " ");
				}

				System.out.println("\n" + x + "반의 총점은 : " + hap);
				System.out.println(x + "반의 평균은 : " + avg);
				System.out.println(x + "반의 최고점수는" + maxp + "학생의" + max);
				System.out.println(x + "반의 최저점수는" + minp + "학생의" + min);

			} else {
				break;
			}

		}
		System.out.println("종료");
	}

}

/*
 * // 1반 int[] kor1=new int[4]; // 2반 int[] kor2=new int[5]; // 3반 int[]
 * kor3=new int[2]; // 4반 int[] kor4=new int[8];
 */
