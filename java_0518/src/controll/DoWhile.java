package controll;

import java.util.Scanner;

public class DoWhile {

	public static void main(String[] args) {
		// do~while : 무조건 1번은 실행된다.
		/*
		  do
		  {
		     반복문장;
		  }while(조건식);
		*/
		Scanner sc=new Scanner(System.in);
		do
		{
			System.out.println("안녕하세요");
		}while(sc.nextInt() != 0);
				
		System.out.println("종료");
	}

}
