package method_over;

public class Method_Over 
{
	int avg;
	public void average(int a) // 메소드 오버로딩
	{
		avg=a;
		System.out.println("평균 : "+avg);
	}
	public void average(int a,int b) // 메소드도 매개변수로 똑같은 이름을 쓸 수 있다.
	{
		avg=(a+b)/2;
		System.out.println("평균 : "+avg);		
	}
	public void average(int a,int b,int c)
	{
		avg=(a+b+c)/3;
		System.out.println("평균 : "+avg);
	}
}
