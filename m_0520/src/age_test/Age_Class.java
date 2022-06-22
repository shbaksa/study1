package age_test;

import java.util.Scanner;

public class Age_Class {
	Scanner sc = new Scanner(System.in);
	int age;
	
	public void input() {
		System.out.print("나이를 입력하세요 : ");
		age = sc.nextInt();
	}
	public void output() {
		
		if (age >= 15) {
			System.out.println("입장하세요 ");
		} else {
			System.out.println("담에오세요");
		}
	}
}
