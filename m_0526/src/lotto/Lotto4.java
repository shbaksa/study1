package lotto;

import java.util.Random;

public class Lotto4 {
	public static void main(String[] args) {

		int lotto[] = new int[6];

		boolean a;

		for (int i = 0; i < lotto.length; i++) { // lotto의 길이만큼 반복

			int num = (int) (Math.random() * 45 + 1); // 변수생성

			a = true; // a= true

			for (int j = 0; j < lotto.length; j++) {

				if (lotto[j] == num) { // 중복검사

					i--; // 중복일때 i감소

					a = false; // a = false 시킴

					System.out.println(num + "중복"); // 동작확인을 위해 프린트

					break; // 반복문을 다시 실행

				}

			}

			if (a) { // 중복이 아닐때 실행

				lotto[i] = num; // 중복검사가 끝난 숫자 입력

				System.out.println(lotto[i] + " "); // 출력

			}

		}

	}

}
