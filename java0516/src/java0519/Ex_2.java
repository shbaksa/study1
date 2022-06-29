package java0519;

import java.util.Scanner;

public class Ex_2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		int x,y=0;
		int sum=0,avg=0;
		
		while(true)
		{
		System.out.println("입력하려는 반은 ?");
		x = sc.nextInt();
		System.out.println("학생인원 수는 ?");
		y = sc.nextInt();
		
		
		int[] sco = new int[y];
			
		for(int i=0; i<sco.length; i++)
		{
			System.out.println(i+1 + "번째 학생의 점수를 입력하세요.");
			sco[i] = sc.nextInt();
			sum += sco[i];
			avg = sum/y;			
		}	
		System.out.println(x + "반의 평균은 = "+ avg);
		
		}
	}

}
