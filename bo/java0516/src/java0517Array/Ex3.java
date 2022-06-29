package java0517Array;

import java.util.Scanner;

public class Ex3 {

	public static void main(String[] args) {
		
		Scanner a = new Scanner(System.in);
		Scanner b = new Scanner(System.in);
		int x,y,z;
		
		while(true) {
		

		System.out.println("첫번째 숫자");
		x = a.nextInt();
		System.out.println("두번째 숫자");
		y = b.nextInt();
		
		if(x<y) 		
		{
			z = y-x;
			System.out.println("큰수는 "+ y + " 작은수 "+ x + " 결과값 = " + z);
		}
		else if(x>y)
		{
			z = x-y;
			System.out.println("큰수는 "+ x + " 작은수 "+ y + " 결과값 = " + z);
		}
		else
		{
			System.out.println("숫자를 입력하세요");
		}
	}
 }
}


