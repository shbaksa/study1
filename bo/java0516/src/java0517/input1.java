package java0517;

import java.util.Scanner;

public class input1 {

	public static void main(String[] args) {
		
		int x,y,z;
		
		
		
		Scanner sc = new Scanner(System.in);
		System.out.println("첫번째 숫자를 입력하세요.");
		x = sc.nextInt();
		System.out.println("두번째 숫자를 입력하세요.");
		y = sc.nextInt();
				
		z = x+y;
		
		System.out.println("값은 = "+ z );
		
		
		

	}

}
