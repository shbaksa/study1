package test;

import java.util.Scanner;

public class Test8 {

	public static void main(String[] args) {
		// 5명의 국어 성적을 입력받아서 총점과 평균 출력하기
		int hap=0,avg;
		Scanner sc=new Scanner(System.in);
		for(int i=1;i<=5;i++)
		{
			hap=hap+sc.nextInt();
		}
        System.out.println("합 : "+hap);
        avg=hap/5;
        System.out.println("평균 : "+avg);
        
        // 배열을 사용해서 위의 문제를 처리
        // 배열생성 : 5명의 점수
        int[] kor=new int[5];
        // 콘솔에서 입력
        for(int i=0;i<kor.length;i++) // kor 0~4
        {
        	kor[i]=sc.nextInt();
        }
        // 배열에 있는 값을 합하기
        int hap2=0, avg2;
        for(int i=0;i<kor.length;i++)
        {
        	hap2=hap2+kor[i];
        }
        System.out.println("합 : "+hap2);
        avg2=hap2/kor.length; // 5
        System.out.println("평균 : "+avg2);
	}

}
