package java0517Array;

import java.util.Scanner;

public class IF_ex3 {
	public static void main(String[] args) {
		
		String menu;
		Scanner choice = new Scanner(System.in);
		
		
		System.out.println("메뉴를 선택하세요.");
				
				
		while(true)
		{				
			menu = choice.next();
			
		if(menu.indexOf("짜장면") != -1)
		{
			System.out.println("짜장면 주문이요.");			
		}
		else if(menu.indexOf("짬뽕") != -1)
		{
			System.out.println("짬뽕 주문이요.");			
		}
		else if(menu.indexOf("우동") != -1)
		{
			System.out.println("우동 주문이요.");			
		}
		else if(menu.indexOf("탕수육 주문이요") != -1)
		{
			System.out.println("탕수육");			
		}
		else
		{
			System.out.println("메뉴를 제대로 입력하세요.");
		}
	}
	}
}
