package m_0519;

import java.util.Scanner;

public class Array2 {

	public static void main(String[] args) {
		// 10000명의 점수을 저장하기
		// 10000명의 점수을 저장할 배열만들기
		Scanner sc=new Scanner(System.in);
		int a=sc.nextInt();
		int[] kor=new int[a];
		for(int i=0; i<kor.length;i++)
		{				//kor배열의 크기
			kor[i]=sc.nextInt();				
		}
		for(int i=0; i<kor.length;i++)
		{
			System.out.print(kor[i]);
			
		}
	}

}
