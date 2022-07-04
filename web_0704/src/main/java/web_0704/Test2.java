package web_0704;

public class Test2 {
    public int hap1()
    {
    	int hap=0;
    	for(int i=1;i<=100;i++)
    	{
    		hap=hap+i;
    	}
    	
    	return hap;
    }
    public int hap2()
    {
    	int hap=0;
    	for(int i=1;i<=200;i++)
    	{
    		if(i%2 == 0)
    		   hap=hap+i;
    	}
    	
    	return hap;
    }
    public int average(int kor,int eng,int mat)
    {
    	int avg=(kor+eng+mat)/3;
    	return avg;
    }
}
