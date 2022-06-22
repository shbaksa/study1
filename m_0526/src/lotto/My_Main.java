package lotto;

import java.util.Random;

public class My_Main {
	public static void main(String[] args) {
		
		My_Num mn=new My_Num();
		
		for(int i=1;i<=6;i++)
		{
		int num=mn.random();
		System.out.print(num+" ");
		}
		
		
	}

}

/*
	Lotto클래스를 생성
	1~45까지의 임의의 값을 리턴해주는 메소드
	My_Num 클래스는 Lotto클래스를 상속
	My_Main클래스 main()에서 로또 번호 6개를 출력하기
						(My_Num클래스에서 출력)
*/