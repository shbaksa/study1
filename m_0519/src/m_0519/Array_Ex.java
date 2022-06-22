package m_0519;

import java.util.Scanner;

public class Array_Ex {

	public static void main(String[] args) {
		// 10명의 국어점수를 콘솔로 입력받기
		Scanner sc=new Scanner(System.in);		
		System.out.print("학생수를 입력하세요 : ");
		int x=sc.nextInt();
		int [] score=new int[x];
		int sum=0;
	
		double aa=0;
		for(int i=0; i<score.length; i++)
		{			
			System.out.print(i+1 +"번째 학생의 점수 : ");
			score[i]=sc.nextInt();				
			sum=score[i]+sum;
			aa=sum/x;
			
			
		}
		// 10명의 국어점수를 출력하기
		for(int i=0; i<score.length; i++)
		{
			System.out.print("["+score[i]+"]"+" ");
		}
		System.out.println("총점 : "+sum+" 평균 : "+aa);
		
		
		
		// 보너스 문제 : 10명의 총점과 평균구하기
		
		/*
		  
		  int hap=0,avg;
		  hap=kor[0]+kor[1]+kor[2]+kor[3]+kor[4]+kor[5]+kor[6]+kor[7]+kor[8]+kor[9];
		  avg=hap/10;
		  System.out.println(hap+" "+avg);

		  for(int i=0; i<kor.length; i++)
		{			
			hap=hap+kor[i];
		}
		  
		  
		  
		  
		  
		 */
	}

}
