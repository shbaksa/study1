package controll;

import java.util.Scanner;

public class If_Ex1 {

	public static void main(String[] args) {
		// 영어점수를 콘솔창에서 입력받고 60점 이상이면 합격, 미만이면 불합격 출력하기
        Scanner sc=new Scanner(System.in);
        System.out.print("영어점수 입력 : ");
        int eng=sc.nextInt();
        
        if(eng >= 60)
        {
        	System.out.println("합격");
        }
        else
        {
        	System.out.println("불합격");
        }
	}

}
