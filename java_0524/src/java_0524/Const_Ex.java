package java_0524;

public class Const_Ex {
    // a에서 b까지의 합을 구해주는 클래스
	// a,b의 값을 생성자를 통해 처리
	int a,b,hap;
	Const_Ex(int a,int b)
	{
		this.a=a;
		this.b=b;
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
