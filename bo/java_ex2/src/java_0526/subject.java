package java_0526;

public class subject {

	
		int a,b;
		int sum=0;
		
				
		public void input(int b)
		{
		   this.b=b;
		}
		
		public void cal()
		{
			sum=0;
			for(int i=1; i<=100; i++)
			{
				sum += i;
			}
		}
		
		public void output()
		{
			System.out.println(sum);
		}
		
}
