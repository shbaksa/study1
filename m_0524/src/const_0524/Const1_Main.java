package const_0524;

import java.util.Scanner;

public class Const1_Main {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.print("n : ");
		int n=sc.nextInt();
		Const1 c1=new Const1(n);
		c1.cal();
		c1.output();
		
	}

}
