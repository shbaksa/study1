package controll;

import java.util.Scanner;

public class If3 {
    public static void main(String[] args) {
		// ������ ������ 3�� �̻��� ��� => if�� �߰��Ͽ� ó��
    	// ���������� �Է¹ް� A,B,C,D,F�� ����ϱ�
    	Scanner sc=new Scanner(System.in);
    	int kor=sc.nextInt();
    	
    	if(kor >= 90)
    	{
    	  System.out.println("����� A�Դϴ�");
    	}
    	else if(kor >= 80)
    	     {
    	       System.out.println("����� B�Դϴ�");
    	     }
    	     else if(kor >= 70)
    	          {
    	            System.out.println("����� C�Դϴ�");
    	          }
    	          else if(kor >= 60)
    	               {
    	                 System.out.println("����� D�Դϴ�");
    	               }
    	               else
    	               {
    	                 System.out.println("����� F�Դϴ�");
    	               }
    	
	}
}
