package exception_01;

import java.util.Scanner;

public class exc_01 {

	public static void main(String[] args)
	{	
		
		Scanner sc = new Scanner(System.in);
		int sum=sc.nextInt();
		int num=sc.nextInt();
		
		try
		{
		double avg = (double)sum/num;
		
		System.out.println(avg);
		}
	
		catch(Exception e)
		{
			System.out.println("0입력");
		}
		finally
		{
			System.out.println("엥");
		}
		sc.close();
	}
	
}
