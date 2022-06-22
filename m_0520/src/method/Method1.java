package method;

import java.util.Scanner;

public class Method1 {
	// 메소드 : 동작할 내용을 모아놓은 영역 => 연관있는 동작들
	// 메소드 실행방법 : 메소드의 이름을 불러주면 된다.
	// 메소드 호출 가능영역 => 모든 메소드에서는 가능
	// 메소드 선언 방법
	/*
	  접근제한자 : public , protected, default, private
	  리턴값 : 메소드를 실행을 한 후에 발생된 값을 돌려주는것 (동작을 하고 나한테 돌아오는 값)[있을수도없을수도] 자료형 : 
	  void(리턴값이 없는 호출값)
	  매개변수 : 메소드를 실행하기 위해 필요한 값을 메소드에 전달하는 것
	  
	  접근제한자 리턴값 메소드명(매개변수 or 빈칸) >  EX) public void NAME(매개변수 or 빈칸)
	  {											{
	  	메소드의 내용을 코딩 							System.out.print("하하");
	  }											}
		 		 	 
	 */
	// 명명규칙 : 변수, 클래스, 메소드 이름을 만들때 규칙 
	// 클래스 첫자만 대문자 (관례)
	// 변수랑 메소드 첫자를 소문자 (관례) 상관은없는데 하면 좋다
	
	/*
	  메소드의 형태
	  1. 리턴값 X 매개변수 X
	  2. 리턴값 O 매개변수 X
	  3. 리턴값 X 매개변수 O
	  4. 리턴값 O 매개변수 O
	  위의 4개의 형태로 메소드를 생성
	 */
	// a에서 b까지의 합을 구해서 출력하기  => 무조건 a가 작은걸로
	// 1. 리턴값 X 매개변수 X
	public void start()
	{
		Scanner sc=new Scanner(System.in);
		int a=sc.nextInt();
		int b=sc.nextInt();
		int hap=0;
		for(int i=a;i<=b;i++)
		{
			hap=hap+i;
		}
		System.out.println("합 : "+hap);		
	}
	// 2. 리턴값 X 매개변수 O
	public void start2(int a,int b) // 매개변수에는 숫자 문자 다양한 자료가 오기때문에 변수값을 각각 지정해줘야 한다 int a,b; <<안됌 int a,int b <<맞음
	{						// a=1 b=100 받는값은 왼쪽부터 순서대로 입력

		int hap=0;
		for(int i=a;i<=b;i++)
		{
			hap=hap+i;
		}
		System.out.println("합 : "+hap);		
		
	}
	// 3. 리턴값 O 매개변수 X
	public int start3()
		{
		Scanner sc=new Scanner(System.in);
		int a=sc.nextInt();
		int b=sc.nextInt();
		int hap=0;
			for(int i=a;i<=b;i++)
			{
				hap=hap+i;
			}
		
				return hap;
		}
	// 4. 리턴값 O 매개변수 O
	public int start4(int a,int b)
	{
		int hap=0;
		for(int i=a;i<=b;i++)
		{
			hap=hap+i;
		}
		return hap;
		
	}

}

