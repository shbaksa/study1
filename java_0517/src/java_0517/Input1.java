package java_0517;

import java.util.Scanner;

public class Input1 {
    public static void main(String[] args) {
		// 숫자(정수) 2개를 콘솔창에서 입력하기
    	int x;
    	int y;
    	
    	Scanner sc=new Scanner(System.in);
    	x=sc.nextInt();  // 대입연산자 : 오른쪽 값을 왼쪽에 저장
    	y=sc.nextInt();
    	
    	// 숫자 2개를 더하여 출력하기
    	System.out.println(x+y);
	}
}
