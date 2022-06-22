package test;

import java.util.Scanner;

public class Test3 {

	public static void main(String[] args) {
		// 당신의 소주 주량을 입력받는다(정수로 입력받기)
		Scanner sc=new Scanner(System.in);
		int soju=sc.nextInt();
		// 0병이면 "부럽습니다" 라고 출력
		// 1병이면 "적당히 마시네요" 라고 출력
		// 2병이면 "많이 마시네요" 라고 출력
		// 3병이면 "너무 많은거 아닌가요" 라고 출력
		// 4병이상이면 "큰일 나요" 라고 출력
		if(soju==0)
		{
		   System.out.println("부럽습니다");
		}
		else if(soju==1)
		{
		   System.out.println("적당히 마시네요");
		}
		else if(soju==2)
		{
		   System.out.println("많이 마시네요");
		}
		else if(soju==3)
		{
		   System.out.println("너무 많은거 아닌가요");
		}
		else
		{
		   System.out.println("큰일 나요");
		}
		
		// switch
		switch(soju)
		{
		   case 0: System.out.println("부럽습니다"); break;
		   case 1: System.out.println("적당히 마시네요"); break;
		   case 2: System.out.println("많이 마시네요"); break;
		   case 3: System.out.println("너무 많은거 아닌가요"); break;
		   default: System.out.println("큰일 나요");
		}

	}

}
