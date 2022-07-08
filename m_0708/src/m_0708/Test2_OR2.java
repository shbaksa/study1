package m_0708;

public class Test2_OR2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int kor=90;
		int eng=70;
		
		if( kor>=80 || eng>=80 )
			
			System.out.println("사준다");
		
		else
			System.out.println("안사준다");
	
		
		if( !(kor>=80 || eng>=80))
			System.out.println("안사준다");
		else
			System.out.println("사준다");
	}

}
