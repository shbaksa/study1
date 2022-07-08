package m_0708;

public class Test {

	public static void main(String[] args) {
		// 비교연산자 => true, false
		
		int kor = 70;
		int eng = 70;
		
		// 두 과목이 있다고 할때
		// 어머니가 두 과목 80점 이상이면 자동차를 사 준다.
		// 1, kor,eng 둘다 80점
		// 2. 1과목 80점 넘는경우
		// 3. 둘다 80점 미만
		
		if(kor >=80 && eng>=80)
			System.out.println("두과목 80점");
		else if(kor >=80 && eng<80)
			System.out.println("국어만 80점");
		else if(kor <80 && eng>=80)
			System.out.println("영어만 80점");
		else
			System.out.println("둘다 80점 아래");

	}

}
