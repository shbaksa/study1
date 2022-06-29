package java0520;

import java.util.Scanner;

import java0518.Test4;

public class Ex_2 {

	public static void main(String[] args) {
		
			
		Scanner sc = new Scanner(System.in);

		System.out.println("점수를 입력하세요.");
		int x = sc.nextInt();
		int y = sc.nextInt();
		int z = sc.nextInt();
		
		double avg = 0;
		double avg1 = 0;
		
		method_2 sub = new method_2();
		
		sub.score_1(x, y, z);
		
		sub.score();
				
		avg = sub.score_2();
		System.out.println("평균은 = "+ avg);
		
			
		System.out.println("점수를 입력하세요.");
		x = sc.nextInt();
		y = sc.nextInt();
		z = sc.nextInt();
		
		avg1 = sub.score_3(x, y, z);
		System.out.println("평균은 = "+ avg1);
		
		}

}
