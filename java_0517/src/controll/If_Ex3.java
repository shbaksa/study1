package controll;

import java.util.Scanner;

public class If_Ex3 {

	public static void main(String[] args) {
		// ���ϴ� �޴��� ���� ���ڷ� �Է¹޴´�.
		// 1:¥���   2:�쵿  3:«��  4:������  
		Scanner sc=new Scanner(System.in);
		System.out.print("1:¥���   2:�쵿  3:«��  4:������  ");
        int chk=sc.nextInt();
        
        if(chk == 1)
        {
		  System.out.println("¥��� �ֹ� ���Ծ��");
        }
        else if(chk == 2)
             {
		       System.out.println("�쵿 �ֹ� ���Ծ��");
             }
             else if(chk == 3)
                  {
		            System.out.println("«�� �ֹ� ���Ծ��");
                  }
                  else if(chk == 4)
                       {
		                 System.out.println("������ �ֹ� ���Ծ��");
                       }
                       else
                       {
		                 System.out.println("�ȹٷ� �Է��ϼ���");
                       }
	}

}
