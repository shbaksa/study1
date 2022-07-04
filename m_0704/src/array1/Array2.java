package array1;

import java.util.Arrays;
import java.util.Random;

public class Array2 {
	public static void main(String[] args) {
		
		int[] num = new int[10];
		
		Random rand = new Random(); 
		
		for(int i=0;i<num.length;i++) { // num.length 배열의 길이로 접근 
			num[i]= rand.nextInt(45)+1;
			
		}
		for(int i=0;i<num.length;i++)
		{
			System.out.print(num[i]+" ");
		}
		System.out.println();
		
		// java에서 제공되는 라이브러리 이용
		
		Arrays.sort(num);
		
		for(int i=0;i<num.length;i++)
		{
			System.out.print(num[i]+" ");
		}
		
		System.out.println();
		
		for(int i=num.length-1;i>=0;i--)
		{
			System.out.print(num[i]+" ");
		}
	}
		
	
}
