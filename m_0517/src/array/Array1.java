package array;

public class Array1 {
				// 배열
	public static void main(String[] args) {
		// 4개의 변수 만들기
		int x1,x2,x3,x4;
		x1=10;
		x2=20;
		x3=30;
		x4=40;
		System.out.println(x1+x2+x3+x4);
		// 4개의 변수의 집합 > 배열을 생성 > 자료형[] 배열명=new 자료형[크기];
		int[] xx=new int[4];
		xx[0]=10;
		xx[1]=20;
		xx[2]=30;
		xx[3]=40;
		
		System.out.println(xx[0]+xx[1]+xx[2]+xx[3]);
		

	} 

}


/* 변수 : 하나의 값(단독주택)
 * x1=90 x2=90 x3=90 x4=90
 * 배열 : 동일한 자료형의 집합(아파트)
 * xx=(90)(89)(88)(87) 배열 인덱스로 구분 int[] xx=new int[0~]
 *     0   1   2   3 >  xx[0] xx[1] xx[2] xx[3]
 *
 * int x; x=100;
 *
 */
