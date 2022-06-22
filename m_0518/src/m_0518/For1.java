package m_0518;

import java.util.Iterator;

public class For1 {

	public static void main(String[] args) {
		/* for i,j,k,l.. 순
		for(초기값;조건식;증가값)
		{
			반복문장;
		}		
		*/  //초기값   조건식   증가값 // 10번 반복 > i는 1부터 시작
		for(int i=1; i <= 10; i++) // i++ = i=i+1
		{
			System.out.println(i+"안녕하세요!");
		}
		
		// 10번 반복 > i는 0부터 시작
		for(int i=0; i < 10 ;i++)
		{
			System.out.println(i+"안녕하세요!");
		}
		
		// 10번 반복 > i는 11부터 시작
		for(int i=11; i <= 20 ;i++)
		{
			System.out.println(i+"안녕하세요!");
		}
	}

}




/*
 * 
 * 2.반복문
 *   for , while > 초보 for만 // for(운동장10바퀴) // while(운동장돌아)
 *	 for : 횟수를 알수 있는 반복문
 *	 while : 횟수를 알지 못하는 반복문 
 *
 *	 for 형식) 
 *
 *	 for(초기값;조건식;증가값)
 *	 {
 *		반복되는 문장;
 *	 }
 *
 *	 while 형식)
 *	 
 *	 while(조건식)
 *	 {
 *		반복되는 문장;
 *	 }
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 */
