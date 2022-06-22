package controll;

public class If1 {

	public static void main(String[] args) {
		/*
		   if(조건)   => 조건에는 true,false의 값이 나오게 한다.
		   {
		      문장 A;   // 조건이 참일 경우
		   }
		   else
		   {
		      문장 B;   // 조건이 거짓일 경우
		   }
        */
		
		// 실행할 문장이 2개이지만 조건에 따라 둘중에 하나만 실행하고자 할때
		// 국어점수가 입력되었을때 다음과 같이 문장을 실행한다 (60점 이상 합격)
		int kor=50;
		
		if(kor >= 60)
		{
		  System.out.println("합격입니다");
		}
		else
		{
		  System.out.println("불합격입니다.");
		}
		
		// 실행문장의 위치가 다를 경우
		if(kor < 60)
		{
		  System.out.println("불합격입니다");
		}
		else
		{
		  System.out.println("합격입니다.");
		}
		
	}

}
