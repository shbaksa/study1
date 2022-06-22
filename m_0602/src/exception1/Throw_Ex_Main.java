package exception1;

public class Throw_Ex_Main {

	public static void main(String[] args) {

		Throw_Ex te = new Throw_Ex();

		te.cal();

		try {
			te.cal2();
		} catch (ArrayIndexOutOfBoundsException e) {
			System.out.println("배열밖");
		}

		System.out.println("다른 내용");

	}

}
