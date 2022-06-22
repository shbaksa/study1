package java_0523;

public class Method1 {
    // 메소드 : 기능을 정의해 놓은 영역 {  }
	// 메소드의 시작은 { 부터,  끝은 }
	// 메소드 내의 모든 내용은 종료와 동시에 사라진다..
	// => 메소드가 끝이나도 저장하고 싶은 내용은 메소드 밖의 영역에 저장한다..
	// => 메소드 밖 => 클래스 내부
	int kor;
	int eng; // 메소드 밖에서 생성 => 전역변수
	public void test()
	{
		int a,b,c,d,e,f;
		String name,juso,pay;
		a=1;b=1;c=1;d=1;e=1;f=1;
		name="홍길동"; juso="서울시"; pay="56,605,000";
		kor=100;
		eng=99;
		System.out.println(a+" "+name);
		System.out.println(kor+" "+eng);
	}
	public void print()
	{
		//System.out.println(a+" "+name);
		System.out.println(kor+" "+eng);
	}
}
