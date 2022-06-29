package java0517;

import java.util.Scanner;

import javax.swing.JOptionPane;

public class input2 {

	public static void main(String[] args) {

		
		/*
		System.out.println("��������� 8�ڸ� �Է��ϼ���.");			
		
		while(true)
		{
				
		Scanner sc = new Scanner(System.in);
								
		boolean input = sc.hasNextInt();  // ���� ����
		
		JOptionPane length = new JOptionPane(); // 8�ڸ� ����
				
		if(input)
		{
			String a = sc.next();
			int a1 = Integer.parseInt(a); // ���ڸ� ������ ��ȯ
			
		if(a.length() == 8)
		{
		  if ( a1 < 20030517 0)
		  { 
			  System.out.println("�����Դϴ�.");
			  break;
		  }
		  else if ( a1 >= 20030517 )
		  {
			  System.out.println("�̼����Դϴ�.");
			  break;
		  }
		  else 
		  {
			  System.out.println("�ٽ� �Է����ּ���.");
			  continue;
		  }
		}
		else
		{
			 System.out.println("8�ڸ��� ���Է����ּ���.");
		     continue;	
		}
		}
		else
		 {
			  System.out.println("���ڷ� ���Է��ϼ���.");
			  continue;
		 }	
		
	    }
		*/
		int A;
		String lotto;
		
		System.out.println("1~4중에 선택하세요.");
		
		Scanner number = new Scanner(System.in);
		
			
		while(true)
		{
		A = number.nextInt();	
			
		switch(A)
		{
		case 1 :
			lotto = "12,5,35,1,7"; 
			System.out.println(lotto);
			break;
		case 2 :
			lotto = "1,8,36,21,17";
			System.out.println(lotto);
			break;
		case 3 : 
			lotto = "11,3,17,32,24";
			System.out.println(lotto);
			break;
		case 4 : 
			lotto = "27,30,6,12,22";
			System.out.println(lotto);
			break;	
			
		default:
			System.out.println("1~4중에 입력하세요");					
									
		}
	 }		
	}
  }

