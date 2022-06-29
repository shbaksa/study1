package java0518;

import java.util.Scanner;

public class Ex_3 {

	public static void main(String[] args) {
	
		String menu;
		int S;
		
		Scanner sc = new Scanner(System.in);
		
		while(true)		
		{
			System.out.print("메뉴를 입력하세요.");
			menu = sc.next();
			
			if(menu.indexOf("그만") != -1) 
				{
					break;
				}
			else
			{
			
			System.out.print("얼마나 주문하겠습니까?");
			S = sc.nextInt();

			switch(menu)
			{
			case "짜장면" :
				System.out.println("짜장면"+S+"그릇 주문이요");
				break;
			case "짬뽕" :
				System.out.println("짬뽕"+S+"그릇 주문이요");	
				break;
			case "우동" :
				System.out.println("우동"+S+"그릇 주문이요");	
				break;
			case "탕수육" :
				System.out.println("탕수육"+S+"그릇 주문이요");	
				break;
				
				default : 
					System.out.print("올바른 ");
			}
			}
		}
		
	}

}
