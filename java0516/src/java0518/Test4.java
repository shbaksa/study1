package java0518;

public class Test4 {

		// 1부터 138까지의 합을 구하기

		// 1부터 100까지의 짝수의 합 구하기
		
		// 1부터 100까지의 4의 배수의 합 구하기
			
		int sum = 0;
		int no1 = 0;
		int sum1 = 0;
				
		public void t1()
		{
		for(int i = 1; i<=138; i++)
			{
				sum = sum + i;
			}
		System.out.println("1~138까지의 합은 = "+sum);
		}
		
		public void t2()
		{
			for(int i = 0; i <=100; i++)
			{
				if(i%2 == 0)
				{
					sum1 += i ;
				}
			}
		System.out.println("1~100사이 짝수의 합은 = "+sum1);
		}
		
		public void t3()
		{
			for(int i = 0; i <=100; i++)
			{
						
				if(i%4 == 0)
				{
					no1 += i;
				}
			}
			System.out.println("1~100사이의 4배수의 합은 = "+ no1);
		}
	}


