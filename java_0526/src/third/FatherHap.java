package third;

public class FatherHap {
   int hap;
   public void cal()
   {
	   for(int i=1;i<=100;i++)
	   {
		   hap=hap+i;
	   }
   }
   public void output()
   {
	   System.out.println("합 : "+hap);
   }
}
