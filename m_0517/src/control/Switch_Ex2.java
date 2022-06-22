package control;
						//if
import java.util.Scanner;

public class Switch_Ex2 {

	public static void main(String[] args) {
		// 두개의 숫자를 입력받기(Scanner)
		
		// 산술연산 실행을 위한 값을 입력받기 (1:+ 2:- 3:* 4:/)
		// 입력되는 값에 따라서 하나의 연산만 실행하기

		
		Scanner sc=new Scanner(System.in);
		System.out.print("첫번째 숫자를 입력하세요 : ");
		int x=sc.nextInt(); 
		System.out.print("두번째 숫자를 입력하세요 : ");
		int y=sc.nextInt(); 
		System.out.println("1:+ 2:- 3:* 4:/");
		System.out.print("산술연산을 고르시오 : ");
		int z=sc.nextInt();
		
		if(z==1)
		{
			System.out.println(x+y);
		}
		else if(z==2)
		{
			System.out.println(x-y);
		}
		else if(z==3)
		{
			System.out.println(x*y);
		}
		else if(z==4)
		{
			System.out.println(x/y);
		}
		else
		{
			System.out.println("잘못 입력");
		}

	
	}

	
}
