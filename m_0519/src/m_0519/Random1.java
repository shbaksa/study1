package m_0519;

import java.util.Random;

public class Random1 {

	public static void main(String[] args) {
		
		/*
		Math.random(); // 0~1사이의 실수를 발생(임의의)
		System.out.println(Math.random());
		*/
		// 정수를 만든후 나머지연산을 이용
		double num=Math.random()*1000; // 0~1000사이 실수
		int num2=(int)num;
		num2=num2%45; // 0~44 발생
		num2=num2+1; // 1~45 발생
		
		System.out.println(num2);
		
		// 값을 곱해서 처리
		double rnum=Math.random()*45; // 0~45사이의 실수	
		int rnum2=(int)rnum; // 소수점 버리기
		rnum2=rnum2+1;
		System.out.println(rnum2);
		
		// Random클래스를 이용하기
		Random rand=new Random(); 
		int mynum=rand.nextInt(45)+1;
		System.out.println(mynum);
		
		
		
	}

}

/*
 	명시적(형변환없이 변환)
 	
 	
 	
 	
 	묵시적(형변환하구 변환)
 
 
 
 
 

 */








/* java.lang > import 없이 사용가능
 *
 * jave.util >
 * jave.sql	 >
 * 나머지		 > import 써야 사용가능
 * 
 */

