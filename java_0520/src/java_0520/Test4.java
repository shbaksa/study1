package java_0520;

public class Test4 {
    int tot1,tot2,tot3;
    // 클래스의 멤버변수의 숫자형 변수는
    // 객체가 생성될때 0으로 초기화
	public void hap1()
	{
		for(int i=1;i<=138;i++)
        {
        	tot1=tot1+i;
        }
        System.out.println(tot1);
	}
	public void hap2()
	{
		for(int i=1;i<=100;i++)
		{
			if(i%2 == 0)  // 짝수일때만 참이 발생
			{
			  tot2=tot2+i;
			}
		}
		System.out.println(tot2);
	}
	public void hap3()
	{
		for(int i=1;i<=100;i++)
		{
			if(i%4 == 0)  // 4의 배수일때만 참이 발생
			{
			  tot3=tot3+i;
			}
		}
		System.out.println(tot3);
	}
}
