package string;

public class String_Ex2 {

	public static void main(String[] args) {
		 String phone="0-123adsf4-56asdf78";
		 // 앞자리, 중간, 뒷자리를 구분하여 출력
		 // 앞 '-', 뒤 '-' 구하기
		 int n=phone.indexOf("-");
		 int m=phone.lastIndexOf("-");
		 String p1=phone.substring(0,n);
		 String p2=phone.substring(n+1,m);
		 String p3=phone.substring(m+1);
		 
		 System.out.println(p1);
		 System.out.println(p2);
		 System.out.println(p3);
	}

}
