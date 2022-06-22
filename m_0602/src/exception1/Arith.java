package exception1;

public class Arith {
	
	public static void main(String[] args) {
		// int와 int의 나누기는 소수점이 발생하지 않는다
		
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
			System.out.println("000000000000000000");
		}
		
		System.out.println("다음에 실행될 내용");
		
	}

}

/*
	1. 자바에서의 예외처리 방법
	- try~catch문을 통하여 예외처리방법
	
	- throws를 통한 예외처리방법 (Exception) 
	  (예외처리 X , 예외를 넘긴다)
	  
	try
	{ 
		예외가 발생할 수 있는 문장
	}
	catch(발생될예외클래스명 변수명)
	{
		예외가 발생했을때 실행될 내용
	}



*/