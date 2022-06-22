package string;

import java.util.Scanner;

public class String_Ex2 {

	public static void main(String[] args) {
		// 010-1234-5678 앞자리, 중간, 뒷자리 구분하여 출력
		Scanner sc=new Scanner(System.in);
		
		String phone1="010-1234-5678";		
		
		String f=phone1.substring(0,3);
		String s=phone1.substring(4,8);
		String t=phone1.substring(9);
		
		System.out.println(f+"\n"+s+"\n"+t);
		
		// 앞 '-', 뒤 '-' 구하기
		String phone=sc.next();
		
		int n=phone.indexOf("-");
		int n1=phone.lastIndexOf("-");
		
		String f1=phone.substring(0,n);
		String s1=phone.substring(n+1,n1);
		String t1=phone.substring(n1+1);
		
		System.out.println(f1+"\n"+s1+"\n"+t1);
		

	}

}
