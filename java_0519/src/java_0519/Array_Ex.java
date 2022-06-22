package java_0519;

import java.util.Scanner;

public class Array_Ex {

	public static void main(String[] args) {
		// 10명의 국어점수를 콘솔로 입력받기(배열)
		Scanner sc=new Scanner(System.in);
		// 배열생성
		int[] kor=new int[10];
		for(int i=0;i<kor.length;i++)
		{              // 10
			 kor[i]=sc.nextInt();
		}
		/*
		kor[0]=sc.nextInt();
		kor[1]=sc.nextInt();
		kor[2]=sc.nextInt();
		kor[3]=sc.nextInt();
		kor[4]=sc.nextInt();
		kor[5]=sc.nextInt();
		kor[6]=sc.nextInt();
		kor[7]=sc.nextInt();
		kor[8]=sc.nextInt();
		kor[9]=sc.nextInt();
		*/
		// 10명의 국어점수를 출력하기
		for(int i=0;i<kor.length;i++) 
		{               // 10
			System.out.println(kor[i]);
		}
		/*
        System.out.println(kor[0]);
        System.out.println(kor[1]);
        System.out.println(kor[2]);
        System.out.println(kor[3]);
        System.out.println(kor[4]);
        System.out.println(kor[5]);
        System.out.println(kor[6]);
        System.out.println(kor[7]);
        System.out.println(kor[8]);
        System.out.println(kor[9]);
        */
		// 보너스 문제 : 10명의 총점과 평균구하기
		
		int hap=0,avg;
		//hap=kor[0]+kor[1]+kor[2]+kor[3]+kor[4]+kor[5]+kor[6]+kor[7]+kor[8]+kor[9];
		for(int i=0;i<kor.length;i++)
		{
			hap=hap+kor[i];
		}
		/*
		  hap=hap+kor[0];
		  hap=hap+kor[1];
		  hap=hap+kor[2];
		  hap=hap+kor[3];
		  hap=hap+kor[4];
		  hap=hap+kor[5];
		  hap=hap+kor[6];
		  hap=hap+kor[7];
		  hap=hap+kor[8];
		  hap=hap+kor[9];
		*/
		avg=hap/10;
		System.out.println(hap+" "+avg);
		
		sc.close();
	}

}
