package third;

public class MyHap_M extends FatherHap_M {
	//1~n까지의 합을 구하여 출력하는 클래스
	//n값은 콘솔창으로 입력받기
	int z;
	public void input2(int x,int z)
	{
		
		this.x=x;
		this.z=z;
		
	}
	public void cal()
	{
		hap=0;
		for(int k=x;k<=z;k++)
		{
			hap+=k;
		}
	}
	public void cal2()
	{
		super.cal();
	}
	

}
