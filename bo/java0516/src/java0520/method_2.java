package java0520;

import java.util.Scanner;

public class method_2 {


		Scanner sc = new Scanner(System.in);
	
		public void score()
		{
			int kor,eng,mat;
			
			System.out.println("각 점수를 입력하세요.");
			kor = sc.nextInt();
			eng = sc.nextInt();
			mat = sc.nextInt();
			
			int sum = kor+eng+mat;
			double avg = sum/3;
			
			System.out.println("평균은 " + avg);
		}
	

		
		public void score_1(int kor, int eng, int mat)
		{
			int sum = kor+eng+mat;
			double avg = sum/3;
			
			System.out.println("평균은 " + avg);
		}
		
		
		public double score_2()
		{
			int kor,eng,mat;
			
			System.out.println("각 점수를 입력하세요.");
			kor = sc.nextInt();
			eng = sc.nextInt();
			mat = sc.nextInt();
			
			int sum = kor+eng+mat;
			double avg = sum/3;
					
			return avg;
	
		}
	
		

		public double score_3(int kor, int eng, int mat)
		{
			int sum = kor+eng+mat;
			double avg = sum/3;
			
			return avg;
		}
		
}
		
