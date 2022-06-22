package m_0517;

public class V7777 {

	public static void main(String[] args) {
		// x의 변수의 값과 y변수의 값을 바꾸기
		int x=100; 
		int y=200;
		System.out.println(x+" "+y);
		// 1. 새로운 변수를 만들기
		int imsi;
		// x의 값을 새로운 변수에 저장
		imsi=x;  
		// y의 값을 x에 저장
		x=y;
		// 새로운 변수의 값을 y에 저장		
		y=imsi;
		
		System.out.println(x+" "+y);
				
	}

}
/* 변수
 * 연산자
 * 제어문,배열
 * 각 언어의 특징
 */
