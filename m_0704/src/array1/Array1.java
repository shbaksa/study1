package array1;

import java.util.Random;

public class Array1 {
	public static void main(String[] args) {
		
		// 1차원 배열 만들고 안에 값 입력하기
		int[] temp = {1,2,3,4,5,6,7,8,9,10};
		for(int j=0;j<10;j++)
			System.out.println(temp[j]);
		// 10개의 크기를 가지는 정수형 배열을 생성
		
		int[] num = new int[10];
		// 각 배열의 인덱스에서 1~45까지의 임의의 값을 저장
		Random rand = new Random(); 
		for(int i=0;i<num.length;i++) { // num.length 배열의 길이로 접근 
			num[i]= rand.nextInt(45)+1;
			
			System.out.print(num[i]+" ");
		}
		System.out.println();
			
		// 크기가 작은순 or 큰순으로 출력
		for(int i=0;i<num.length-1;i++) {
			
			for(int j=i+1;j<num.length;j++) {
				
				if(num[i] > num[j]) { // 왼쪽부터 적은수
					int imsi;
					imsi = num[i];
					num[i] = num[j];
					num[j] = imsi;
				}
				if(num[i]==num[j]) { 
					num[i]=rand.nextInt(45)+1;
				}
			}
		}
		for(int i=0;i<num.length;i++)
		{
			System.out.print(num[i]+" ");
		}
		
			
	}

}
