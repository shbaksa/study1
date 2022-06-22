package exception1;

public class Finally_Ex {

	public static void main(String[] args) {

		int hap = 99;
		int num = 0;

		try {
			int avg = hap / num;
			System.out.println(avg);
		} catch (ArithmeticException e) {
			// e.printStackTrace();
			System.out.println("0으로 나누면 안되요");
		} finally { // 예외가 있든 없든 무조건 실행된다.
					// try랑 묶여있다는걸 알려주기 위한용도정도?
			System.out.println("언제 실행될까요?");
		}
		// System.out.println("언제 실행될까요?"); // finally 안에 있나 밖에 있나 똑같이 실행됨
		System.out.println("다음에 실행될 내용");

	}

}
