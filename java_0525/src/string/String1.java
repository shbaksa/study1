package string;

public class String1 {
    public static void main(String[] args) {
		String str="안녕하세요";
        // 클래스이므로 new연산자를 통해 객체를 생성
		// 단, 사용자를 위해 기본 자료형처럼 사용할 수 있게 제공
		String name=new String("홍길동");
		
		// charAt(index) : index값에 해당되는 문자를 리턴
		String ex1="학교종이 땡땡땡 어서 모이자 땡땡땡";
		char c=ex1.charAt(9);
		System.out.println(c);
		
		// length() : 문자열의 길이를 구해서 리턴
		int len=ex1.length();
		System.out.println("길이 : "+len);
		
		// replace() : 문자열을 내용을 바꾸기
		String ex2=ex1.replace("땡땡땡", "뎅뎅뎅");
		System.out.println(ex2);
		
		// indexOf() : 특정 문자를 찾을때 => 찾은 후 해당 문자의 index를 리턴
		// 무조건 앞에서 검색하여 처음 만나는 문자의 위치
		String test="java programing";
		int n=test.indexOf("a");
		System.out.println("인덱스 : "+n);
		
		// lastIndexOf() : 특정 문자를 찾을때 => 찾은 후 해당 문자의 index를 리턴
		// 무조건 뒤에서 검색하여 처음 만나는 문자의 위치
		int m=test.lastIndexOf("a");
		System.out.println("인덱스 : "+m);
		
		// substring() : 문자열에서 특정부분을 잘라서 리턴
		String ex3="동해물과 백두산이 마르고 닳도록";
		String result=ex3.substring(5,8);
		// 첫번째 인덱스부터 두번째 인덱스의 앞까지
		System.out.println(result);
		
		result=ex3.substring(0,3);
		System.out.println(result);
		
		// 백두산 뒤의 모든 문자
		result=ex3.substring(5);
		System.out.println(result);
	}
}









