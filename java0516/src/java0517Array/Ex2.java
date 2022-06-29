package java0517Array;

import java.util.Scanner;

public class Ex2 {

	public static void main(String[] args) {
		
		Scanner age = new Scanner(System.in);
		Scanner a = new Scanner(System.in);
		int x,y,z;
		
		
		System.out.println("나이를 입력하세요.");
		x = age.nextInt();
		
		if(x<20) 		
		{
			System.out.println("A석");
		}
		else if(x<30 && x>20)
		{
			System.out.println("B석");
		}
		else if(x<40 && x>30)
		{
			System.out.println("C석");
		}
		else
		{
			System.out.println("D석");
		}
	}

	}


