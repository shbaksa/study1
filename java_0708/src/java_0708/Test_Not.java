package java_0708;

public class Test_Not {

	public static void main(String[] args) {
		int kor=90;
		int eng=70;
		
		if( !(kor>=80  ||  eng>=80) )   //  ( kor<80 && eng<80 )
		{
			System.out.println("안 사준다");
		}
		else
		{
			System.out.println("집 사준다");
		}
	}

}
