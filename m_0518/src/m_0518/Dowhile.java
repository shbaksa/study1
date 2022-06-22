package m_0518;

import java.util.Scanner;

public class Dowhile {

	public static void main(String[] args) {
		// do~while : 무조건 1번은 실행된다.
		/*
		  do
		  {
		  	 반복문장;
		  }while(조건식); < 중가로 열닫없고 do부터 while 앞까지 돌리고 while식에서 조건식을 검사
		 */
		Scanner sc=new Scanner(System.in);	
		do
		{
			System.out.println("숫자 입력");
		}while(sc.nextInt() != 0);
		
			
		System.out.println("종료");
				
	}

}
