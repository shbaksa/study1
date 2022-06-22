package controll;

import java.util.Scanner;

public class While1 {

	public static void main(String[] args) {
		/*
		  while(조건식)
		  {
		     반복문장;
		  }   
		*/
		/*
		while(true) // 무한 반복
		{
			System.out.println("안녕하세요");
		}
        */
		
		// 콘솔 입력창에 값이 0일때 반복문을 종료
		Scanner sc=new Scanner(System.in);
		int chk=sc.nextInt();
		while(chk != 0)
		{
			System.out.println("안녕하세요");
			chk=sc.nextInt();
		}
		
		System.out.println("종료");

	}

}
