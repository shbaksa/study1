package exception1;

public class Throw_Ex {

	public void cal() {

		try {
			int hap = 99;
			int num = 0;
			int avg = hap / num;
			System.out.println(avg);
		} catch (ArithmeticException e) {
			System.out.println("0은 안됨");
		}
	}

	public void cal2() throws ArrayIndexOutOfBoundsException {

		int[] lot = new int[3];
		lot[3] = 11;
	}

}
