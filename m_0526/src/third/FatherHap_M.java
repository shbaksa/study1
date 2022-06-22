package third;

public class FatherHap_M {
	//1~100까지의 합을 구하여 출력하는 클래스
	int x,y,hap;
	public void input(int x,int y)
	{
		this.x=x;
		this.y=y;
	}

	public void cal()
	{
		
		for(int i=x;i<=y;i++)
		{
			hap+=i;
		}
	}
	public void output()
	{
		System.out.println(hap);
	}

}
