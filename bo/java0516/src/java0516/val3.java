package java0516;

import java.util.Scanner;

public class val3 {
	public static void main(String[] args) {
		
		/*int a=3;
		String b="�ȳ�";
		
		int c=a+6;
		int d=c/a;
		int e=c%2;
	
		System.out.println(c);			
		System.out.println(d);
		System.out.println(e);*/
		
		int aa,cc;
		String bb;
		
		Scanner sc=new Scanner(System.in);
		
		System.out.println("ù��°����");
		aa = sc.nextInt();	
		System.out.println("�ι�°����");
		cc = sc.nextInt();
		System.out.println("�Է¿Ϸ�");
		bb = sc.next();
									
		System.out.println("���ϱ�"+"="+(aa+cc));
		System.out.println("����"+"="+(aa-cc));
		System.out.println("���ϱ�"+"="+(aa*cc));
		System.out.println("������"+"="+(aa/cc));
		
	}
	
}
