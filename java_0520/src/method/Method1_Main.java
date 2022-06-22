package method;

public class Method1_Main {

	public static void main(String[] args) {
		Method1 m1=new Method1();
		// 리턴값X  매개변수X
		//m1.start();
		
		// 리턴값X  매개변수 O
		//m1.start2(1,100);
		 
		/*
		int a1=1;
		int a2=33;
		int a3=44;
		int b1=100;
		int b2=200;
		int b3=1000;
		m1.start2(a1, b1);
		m1.start2(a2, b2);
		m1.start2(a3, b3);
		*/
		
		
		// 리턴값 O 매개변수 X
		//int hap=m1.start3();
		
		//System.out.println();
		//System.out.println("하하");
		
		//System.out.println(hap);
		
		// 리턴값 O 매개변수 O
		int hap=m1.start4(1, 111);
		
		System.out.println(hap);
	}

}
