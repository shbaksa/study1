package exception1;

public class Arith {

	public static void main(String[] args) {
		// int와 int의 나누기는 소숫점이 발생하지 않는다
		int hap=99;
		int num=0;
	
		try
		{
	        int avg=hap/num;
		    System.out.println(avg);
		}
		catch(ArithmeticException e)
		{
			e.printStackTrace();
			System.out.println("0으로 나누면 안되요");
		}
	 
		
		System.out.println("다음에 실행될 내용");
	}

}
