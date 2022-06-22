package test;

import java.util.Scanner;

public class Test7 {
    public static void main(String[] args) {
		// "즐거운 수요일입니다" 출력하기 문제
    	// 단 콘솔창에서 숫자를 입력받은 만큼 출력하기
    	Scanner sc=new Scanner(System.in);
    	System.out.println("몇번출력");
    	int x=sc.nextInt();
  	
    	for(int i=1; i<=x; i++)
    	{
    		System.out.println("즐거운 수요일입니다");
    	}
    	
	} 
   
}
