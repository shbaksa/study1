package java0524;

public class Ex_1 {
	
	
		int x,y;
		int sum;
		long gop;
	
		Ex_1(int x, int y)
		{
			this.x =x;
			this.y =y;
			
		}
		
		public int sum()
		{
			sum=0;
			for(int i=x; i<=y; i++)
			{
				sum += i;
			}
			return sum;
		}
		
		public long gop()
		{
			gop=1;
			for(int i=x; i<=y; i++)
			{
				gop *= i;
			}
			return gop;
		}
		
		public void output()
		{
			System.out.println("합은 " + sum + " 곱은 "+ gop);
		}
		
		
}
