package control;

public class If1 {
					//제어문
	public static void main(String[] args) {
		// 
		/*if(조건) > 조건에는 true,false의 값이 나오게 한다(비교연산자 >,<,=,<=,>=)
		 *   {
		 *    문장 A;		//조건이 참일 경우
		 *   }
		 *   else
		 *   {
		 *    문장 B;		//조건이 거짓일 경우
		 *   }
		 */
		  
		   // 실행할 문장이 2개이지만 조건에 따라 둘중에 하나만 실행하고자 할때
		   // 국어 점수가 입력되었을때 다음과 같이 문장을 실행한다 (60점 이상 합격)
		int kor=60;
		
		if(kor>=60)
		{
			System.out.println("합격입니다.");
		}
		else
		{
			System.out.println("불합격입니다.");		  
		}
		// 실행문장의 위치가 다를 경우 (연산 위치 확인)
		if (kor<60) 
		{
			
			System.out.println("불합격입니다.");
		} 
		else 
		{
			System.out.println("합격입니다.");
		}
			
		
		
	}

}


/* 제어문 
 * 1.조건문(분기문)
 *   if , switch > 초보 if만
 *   
 *   if : 조건에 따라 실행되는 문장이 다른 경우
 *   형식)
 *   if(조건) > 조건에는 true,false의 값이 나오게 한다(비교연산자 >,<,=)
 *   {
 *    문장 A;		//조건이 참일 경우
 *   }
 *   else
 *   {
 *    문장 B;		//조건이 거짓일 경우
 *   }
 *
 * 
 *  // 실행할 문장이 2개이지만 조건에 따라 둘중에 하나만 실행하고자 할때
 * 
 * 
 * 	 switch : 2개 이상의 실행문장중 하나를 실행할때
 * 	 형식)
 * 	 switch(변수) 
 * 	 {		
 * 	 case 변수의값: 실행문 1 ; break;
 * 	 case 변수의값: 실행문 2 ; break;
 * 	 case 변수의값: 실행문 3 ; break;
 * 	 case 변수의값: 실행문 4 ; break;
 * 	 default : 실행문5; 
 * 	 }
 * 
 * 
 * 
 * 2.반복문
 *   for , while > 초보 for만 // for(운동장10바퀴) // while(운동장돌아)
 *	 for : 횟수를 알수 있는 반복문
 *	 
 *	 while : 횟수를 알지 못하는 반복문 
 *
 *	 for형식
 *	 for(초기값;조건식;증가값)
 *	 {
 *		반복되는 문장;
 *	 }
 *	 
 *
 *
 *
 *
 *
 *
 *
 *
 * 
 */