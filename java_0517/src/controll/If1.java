package controll;

public class If1 {

	public static void main(String[] args) {
		/*
		   if(����)   => ���ǿ��� true,false�� ���� ������ �Ѵ�.
		   {
		      ���� A;   // ������ ���� ���
		   }
		   else
		   {
		      ���� B;   // ������ ������ ���
		   }
        */
		
		// ������ ������ 2�������� ���ǿ� ���� ���߿� �ϳ��� �����ϰ��� �Ҷ�
		// ���������� �ԷµǾ����� ������ ���� ������ �����Ѵ� (60�� �̻� �հ�)
		int kor=50;
		
		if(kor >= 60)
		{
		  System.out.println("�հ��Դϴ�");
		}
		else
		{
		  System.out.println("���հ��Դϴ�.");
		}
		
		// ���๮���� ��ġ�� �ٸ� ���
		if(kor < 60)
		{
		  System.out.println("���հ��Դϴ�");
		}
		else
		{
		  System.out.println("�հ��Դϴ�.");
		}
		
	}

}
