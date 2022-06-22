package array;

public class Array1 {

	public static void main(String[] args) {
		// 4개의 변수만들기
		int x1,x2,x3,x4;
		x1=10;
		x2=20;
		x3=30;
		x4=40;
		System.out.println(x1+x2+x3+x4);
		// 4개의 변수의 집합 => 배열을 생성 => 자료형[] 배열명=new 자료형[크기];
		int[] xx=new int[4];
        xx[0]=10;
        xx[1]=20;
        xx[2]=30;
        xx[3]=40;
		System.out.println(xx[0]+xx[1]+xx[2]+xx[3]);
				
		
	}

}
