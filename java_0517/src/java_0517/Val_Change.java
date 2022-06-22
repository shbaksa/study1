package java_0517;

public class Val_Change {

	public static void main(String[] args) {
		// x의 변수의 값과 y변수의 값을 바꾸기
		int x=100;
		int y=200;
		System.out.println(x+" "+y);
		// 1. 새로운 변수를 만들기
		int imsi;
		// x값을 새로운 변수에 저장
		imsi=x;
		// y의 값을 x에 저장
		x=y;
		// 새로운 변수의 값을 y에 저장
		y=imsi;
		System.out.println(x+" "+y);
	}

}
