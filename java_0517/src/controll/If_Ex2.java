package controll;

import java.util.Scanner;

public class If_Ex2 {

	public static void main(String[] args) {
		 // ���̸� �Է¹޾Ƽ� 20�� �̻��̸�
		 // "�������" ���
		 // 20�� �̸��̸� "�㿡 ������" ���
		Scanner sc=new Scanner(System.in);
        int age=sc.nextInt();
        
        if(age >= 20)
        {
        	System.out.println("� ������");
        }
        else
        {
        	System.out.println("�㿡 ������");
        }
	}

}
