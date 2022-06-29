package java0518;

import java.util.Scanner;

public class Test6 {
   public static void main(String[] args) {
	   // 요일을 숫자로 입력받기 (일:0, 월:1, 화:2 .....)
	   // switch로 처리하기
	   // 일요일이면 "즐거운 일요일입니다" 출력
	   // 월요일이면 "즐거운 한주를 시작합시다" 출력
	   // 화요일이면 "벌써 2일째 입니다" 출력
	   // 수요일이면 "반이 지나갑니다" 출력
	   // 목요일이면 "조금만 힘내세요" 출력
	   // 금요일이면 "즐거운 불금입니다" 출력
	   // 토요일이면 "푹 잡시다" 출력
	   
	   Scanner sc = new Scanner(System.in);
	   
	   System.out.println("요일을 입력하세요.");
	   String a = sc.next();
	   
	   switch(a)
	   {
	   case "월","월요일" :
		   System.out.println("즐거운 한주를 시작합시다."); break;
	   case "화","화요일" :
		   System.out.println("벌써 2일째 입니다."); break;
	   case "수","수요일" :
		   System.out.println("반이 지나갑니다."); break;
	   case "목","목요일" :
		   System.out.println("조금만 힘내세요."); break;
	   case "금","금요일" :
		   System.out.println("즐거운 불금입니다."); break;
	   case "토","토요일" :
		   System.out.println("푹 잡시다."); break;
	   case "일","일요일" :
		   System.out.println("즐거운 일요일입니다."); break;
		default :
			System.out.println("요일을 입력하세요.");
	   }
	   
	   
   }
}
