package java0518;

import java.util.Scanner;

public class Test7 {
    public static void main(String[] args) {
		// "즐거운 수요일입니다" 출력하기 문제
    	// 단 콘솔창에서 숫자를 입력받은 만큼 출력하기
    	
    	Scanner sc = new Scanner(System.in);
    	
    	System.out.println("출력할 문장의 갯수를 입력하세요.");
    	
    	int a = sc.nextInt();
    	
    	for(int i=0; i<=a; i++)
    	{
    		System.out.println("즐거운 수요일입니다.");
    	}
    	
	} 
   
}
