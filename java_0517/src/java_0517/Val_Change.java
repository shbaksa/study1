package java_0517;

public class Val_Change {

	public static void main(String[] args) {
		// x�� ������ ���� y������ ���� �ٲٱ�
		int x=100;
		int y=200;
		System.out.println(x+" "+y);
		// 1. ���ο� ������ �����
		int imsi;
		// x���� ���ο� ������ ����
		imsi=x;
		// y�� ���� x�� ����
		x=y;
		// ���ο� ������ ���� y�� ����
		y=imsi;
		System.out.println(x+" "+y);
	}

}
