package java_0517;

import java.util.Scanner;

public class Input2 {

	public static void main(String[] args) {
		//  ����, ����, ���� 3������ ���� �Է¹ޱ�
        int kor,eng,mat; // ������ �ڷ��� ������ ,�μ� �����Ͽ� 1�ٿ� ������ ����
        
        Scanner sc=new Scanner(System.in);
        // 1. �Է��Ҷ� ������ �Է��ϴ��� �����
        System.out.print("���� : ");
        kor=sc.nextInt();
        System.out.print("���� : ");
        eng=sc.nextInt();
        System.out.print("���� : ");
        mat=sc.nextInt();
        
		// ������ ���� ����ϱ�
        System.out.print("�����հ� : ");
		System.out.println(kor+eng+mat);
		
		// ������ ����� ����ϱ�
		System.out.println("������� : "+(kor+eng+mat)/3);
		
	}

}
