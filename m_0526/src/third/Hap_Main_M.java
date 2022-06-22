package third;

import java.util.Scanner;

public class Hap_Main_M {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc=new Scanner(System.in);
		MyHap_M mh=new MyHap_M();
		mh.input(1, 100);
		mh.cal2();
		mh.output();
		
		
		
		System.out.print("z값 입력 : ");
		int z=sc.nextInt();
		mh.input2(1,z);
		mh.cal();
		mh.output();
		
		

	}

}
