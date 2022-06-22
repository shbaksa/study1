package test;

public class Test9 {

	public static void main(String[] args) {
		int hap=0,hap1=0;
		for(int i=1 ; i <=100 ; i++)
		{
			if(i%2==0)
			{
				hap=hap+i;
			}
			
		}
		
		int hap3=0, hap4=0, hap5=0;
		for(int i=1 ; i <=100 ; i++)
		{
			if(i%2==0)
			{
				hap3=hap3+i;
			}
			else if(i%2==0)
			{
				hap4=hap4+i;
			}
			else if(i%7==0)
			{
				hap5=hap5+i;
			}
		}
		System.out.println(hap3);
		System.out.println(hap4);
		System.out.println(hap5);

	}

}
