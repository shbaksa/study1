package java_05251;

import java.util.Scanner;

public class test0 {

	public static void main(String[] args) {
		
		
		Scanner sc = new Scanner(System.in);
		
		father ft = new father();
		
		ft.input(50, 60, 70);
		ft.cal();
		System.out.println(ft.output1());
		System.out.println(ft.output2());
		
		
		String num = sc.next();
		ft.setNum(num);
		System.out.println(ft.getNum());
	}

}
