package java0519;


import java.util.Arrays;
import java.util.Scanner;

public class Ex_arr1 {

	public static void main(String[] args) {
		
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("학생인원을 입력하세요.");
		
		int	x = sc.nextInt();
		
		int[] arr = new int[x];
		
		int sum=0;
		int avg=0;
		
		int maxgrade = 0;
		int mingrade = 1000;
		int most = 0; 
		int min = 0;
		
		for(int i=0; i<arr.length; i++)
		{
			System.out.print(i+1+"번째 학생의 점수를 입력하세요.");
			arr[i] = sc.nextInt();
			sum += arr[i];
			avg = sum/x;


			if(maxgrade < arr[i])
			{
				maxgrade = arr[i];
				most = i+1;
			}
			if(mingrade > arr[i])
			{
				mingrade = arr[i];
				min = i+1;			
			}
		}
		System.out.println("각점수는 "+Arrays.toString(arr)+"합 ="+sum+"평균 ="+avg);
		System.out.println("가장 우수한 학생은 "+ most +"번째 학생입니다. 점수 = " + maxgrade);
		System.out.println("가장 저조한 학생은 "+ min +"번째 학생입니다. 점수 = " + mingrade);
	}

}
