package controll;

import java.util.Scanner;

public class While2 {

	public static void main(String[] args) {
		// 콘솔 입력창에 값이 0일때 반복문을 종료
		Scanner sc=new Scanner(System.in);
 
		while(sc.nextInt() != 0)
		{
			System.out.println("안녕하세요");
	 
		}
				
		System.out.println("종료");


	}

}
