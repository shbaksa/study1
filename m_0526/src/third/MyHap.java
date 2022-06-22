package third;

import java.util.Scanner;

public class MyHap extends FatherHap{
	int n;
	
	@Override
	public void cal()
	{
		hap=0; // 계속 작업을 하면 초기화 시켜주기
		Scanner sc=new Scanner(System.in);
		n=sc.nextInt();

		for(int i=1;i<=n;i++)
		{
			hap+=i;
		}
		
	}
	public void cal1()
	{
		hap=0; // 계속 작업을 하면 초기화 시켜주기
		super.cal();
	}

}
