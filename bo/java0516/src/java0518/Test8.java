package java0518;


import java.util.Arrays;
import java.util.Scanner;

public class Test8 {

	public static void main(String[] args) {
		// 5명의 국어 성적을 입력받아서 총점과 평균 출력하기
		Scanner sc = new Scanner(System.in);
		
		System.out.println("학생인원을 입력하세요.");
		
		int	x = sc.nextInt();
		
		int[] arr = new int[x];
		
		int sum=0;
		int avg=0;
		
		
		for(int i=0; i<x; i++)
		{
			System.out.print(i+1+"번째 학생의 점수를 입력하세요.");
			arr[i] = sc.nextInt();
			sum += arr[i];
			avg = sum/x;
		}
		System.out.println("각점수는 "+Arrays.toString(arr)+"합"+sum+"평균"+avg);
		System.out.println("3번째 학생 점수는 = " + arr[2]);
		
	}

}
