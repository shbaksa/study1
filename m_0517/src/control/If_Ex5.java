package control;

import java.util.Scanner;

public class If_Ex5 {

	public static void main(String[] args) {
		// 원하는 메뉴의 값을 숫자로 입력받는다.
		// 1:짜장면 2:우동 3:짬뽕 4:탕수육 
		System.out.println("1:짜장면 2:우동 3:짬뽕 4:탕수육 ");
		Scanner sc=new Scanner(System.in);		
		System.out.print("주문번호 : ");
		int menu=sc.nextInt();
		
							
		if(menu==1)
		{
			System.out.println("짜장면 주문 들어왔어요");
		}
		else if(menu==2)
		{
			System.out.println("우동 주문 들어왔어요");
		}
		else if(menu==3)
		{
			System.out.println("짬뽕 주문 들어왔어요");
		}
		else if(menu==4)
		{
			System.out.println("탕수육 주문 들어왔어요");
		}
		else 
		{
			System.out.println("똑바로 입력하세요");			
		}
		
		
		
		
		
		

	}

}
