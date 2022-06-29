package java0524;

import java.util.Scanner;

public class test_1 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		String phone = sc.next();
		
		
		String[] z = phone.split("-");
		
		for(int i=0; i<z.length; i++)
		{
		  System.out.println(z[i]);
		}
				
		
	}

}
