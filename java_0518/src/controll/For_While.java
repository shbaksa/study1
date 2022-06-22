package controll;

import java.util.Scanner;

public class For_While {

	public static void main(String[] args) {
		// for문을 while문의 형태로 만들기
		Scanner sc=new Scanner(System.in);
		
		for(;;)
		{
			if(sc.nextInt() != 0)
			{
			    System.out.println("하하");
			}
			else
			{
				break;
			}
		}
        System.out.println("종료");
	}

}
