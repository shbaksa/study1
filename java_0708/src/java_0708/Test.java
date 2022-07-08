package java_0708;

public class Test {

	public static void main(String[] args) {
		// 비교연산자  => true, false
        int kor=90;
        int eng=80;
        
        // 두 과목이 있다고 할때
        // 어머니가 두 과목 80점 이상이면 자동차를 사 준다..
        // 1. kor, eng 둘다 80점이상
        // 2. 1과목 80점 넘는 경우
        // 3. 둘다 80점 미만
        
        if(kor>=80)
        {
        	if(eng>=80)
        	{
        		System.out.println("자동차 사준다");
        	}
        	else
        	{
        		System.out.println("안 사준다");
        	}
        }
        else
        {
        	System.out.println("안 사준다");
        }
        
	}

}






