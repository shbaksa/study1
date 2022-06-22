package const_ex;

public class Const_Ex {
	
	int a,b,hap;
	
	Const_Ex(int a, int b) // 실행 시점이 다른 메소드 // new Const_Ex를 쓰는 즉시 실행
	{
		this.a=a;
		this.b=b;	 	 
	}
	public void cal() // 메인에서 호출해야 실행되는 메소드
	{
		if(a<b)
		{
			for(int i=a;i<=b;i++)
			{
				hap+=i;
			}
		}
		else
		{
			for(int i=b;i<=a;i++)
			{
				hap+=i;
			}
		}
	}
	public void output()
	{
		if(a<b)
		{
			System.out.println(a+"부터"+b+"까지 합 : "+hap);
		}
		else
		{
			System.out.println(b+"부터"+a+"까지 합 : "+hap);
		}
	}
	

}
