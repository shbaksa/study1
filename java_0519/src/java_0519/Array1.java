package java_0519;

import java.util.Scanner;

public class Array1 {

	public static void main(String[] args) {
		// Scanner객체를 생성하기
		Scanner sc=new Scanner(System.in);
		
		// 정수 6개의 값을 저장할 공간 만들기
		// 1. 변수
		int num1,num2,num3,num4,num5,num6;
		// 콘솔창을 통해 변수에 값을 입력
		num1=sc.nextInt();
		num2=sc.nextInt();
		num3=sc.nextInt();
		num4=sc.nextInt();
		num5=sc.nextInt();
		num6=sc.nextInt();
		// 6개의 변수의 값을 출력
		System.out.println(num1);
		System.out.println(num2);
		System.out.println(num3);
		System.out.println(num4);
		System.out.println(num5);
		System.out.println(num6);
		
		// 2. 배열
		int[] arr=new int[6];
		// 콘솔창을 통해 배열에 값을 입력
		for(int i=0;i<6;i++)
		{
		  arr[i]=sc.nextInt();
		}
		// 배열의 값도 출력
		for(int i=0;i<6;i++)
		  System.out.println(arr[i]);
		/*
		System.out.println(arr[0]);
		System.out.println(arr[1]);
		System.out.println(arr[2]);
		System.out.println(arr[3]);
		System.out.println(arr[4]);
		System.out.println(arr[5]);
	 
		arr[0]=sc.nextInt();
		arr[1]=sc.nextInt();
		arr[2]=sc.nextInt();
		arr[3]=sc.nextInt();
		arr[4]=sc.nextInt();
		arr[5]=sc.nextInt();
        */
	}

}
