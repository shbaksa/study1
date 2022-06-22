package java_0524;

public class Const_Ex2 {
    // 1~100까지의 합
	// 1~b까지의 합
	// a~b까지의 합
	// 위의 동작을 하는 클래스를 만들고자 한다.
	// 단. 값의 초기화는 생성자를 통해서 한다.
	int a,b,hap;
	// 1~100 초기화를 위한 매개변수 X
	Const_Ex2()
	{
		a=1;
		b=100;
		System.out.println("매개변수X");
	}
	// 1~b 초기화를 위한 매개변수 1개
	Const_Ex2(int b)
	{
		a=1;
		this.b=b;
		System.out.println("매개변수 1");
	}
	// a~b 초기화를 위한 매개변수 2개
	Const_Ex2(int a,int b)
	{
		this.a=a;
		this.b=b;
		System.out.println("매개변수 2");
	}
	
	public void cal()
	{
		for(int i=a;i<=b;i++)
		{
			hap=hap+i;
		}
	}
	
	public void output()
	{
		System.out.println("합 : "+hap);
	}

}









