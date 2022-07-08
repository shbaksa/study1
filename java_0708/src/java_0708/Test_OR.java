package java_0708;

public class Test_OR {

	public static void main(String[] args) {
		// 어머니가 국어, 영어중에 하나라도 90점이 넘으면
		// 집을 사준다.
		int kor=90;
		int eng=70;
		
		if(kor>=80)
		{
			if(eng>=80)
			{
				System.out.println("집 사준다");
			}
			else
			{
				System.out.println("집 사준다");
			}
			
		}
		else if(eng>=80)
		     {
		         System.out.println("집 사준다");
		     }
		     else
		     {
		    	 System.out.println("안 사준다");
		     }

	}

}
