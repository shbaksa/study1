package string;

public class String_Ex1 {

	public static void main(String[] args) {
		String email="gaasdfadsfad@naver.com";
		// 아이디와 서버주소를 분리하여 출력하시오
		
		// @의 인덱스값을 구하기
		int n=email.indexOf("@");
		System.out.println(n);	
		int n1=email.lastIndexOf(".");
		
		String userid=email.substring(0,n);
		String server=email.substring(n+1);
		String hh=email.substring(n+1,n1);
		System.out.println("아이디 : "+userid+" "+"서버주소 : "+server);
		System.out.println(hh);
		
	}

}
