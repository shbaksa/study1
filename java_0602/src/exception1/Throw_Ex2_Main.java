package exception1;

public class Throw_Ex2_Main {

	public static void main(String[] args) {
		 Throw_Ex2 te2=new Throw_Ex2();
		 try
		 {
		   te2.test();
		 }
		 catch(ArithmeticException e)
		 {
			 System.out.println("0은 안되요");
		 }
		 
		 System.out.println("계속 진행");
	}

}
