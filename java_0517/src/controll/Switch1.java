package controll;

import java.util.Scanner;

public class Switch1 {

	public static void main(String[] args) {
		// chk������ 1~4������ ���� ����
		// 1:¥���   2:�쵿  3:«��  4:������  
		Scanner sc=new Scanner(System.in);
		int chk=sc.nextInt();
		
		switch(chk)
		{
		   case 1: System.out.println("¥���"); break;
		   case 2: System.out.println("�쵿"); break;
		   case 3: System.out.println("«��"); break;
		   case 4: System.out.println("������"); break;
		   default: System.out.println("�߸� �Է�");
		}
		
		 

	}

}
