package string;

public class String_Ex1 {
    public static void main(String[] args) {
		String email="c@naver.com";
		// 아이디와 서버주소를 분리하여 출력하시오
		
		// @의 인덱스값을 구하기
		int n=email.indexOf("@");
		System.out.println(n);
		
		String userid=email.substring(0,n);
		String server=email.substring(n+1);
		
		System.out.println(userid+" "+server);
	}
}
