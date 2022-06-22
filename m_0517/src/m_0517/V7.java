package m_0517;

public class V7 {

	public static void main(String[] args) {
		// 증감연산자의 위치에 따른 예제
		int tt,vv;
		int y=10,b=10;
		tt=y++; // ++가 변수 뒤에 있으면 값을 왼쪽에 전달한 후에 증가된다
		vv=b--; // --동일
		System.out.println(y+" "+tt);
		System.out.println(b+" "+vv);
		
		
		int mm,nn;
		int x=10,a=10;
		mm=++x; // ++가 변수 앞에 있을경우 증감연산자가 실행된 후에 값을 왼쪽에 전달
		nn=--a; // --동일
		System.out.println(x+" "+mm);
		System.out.println(a+" "+nn);

	}

}
