package third;

import java.util.Scanner;

public class MyHap extends FatherHap {
    int n;
    
    @Override
    public void cal()
    {
    	hap=0;
    	Scanner sc=new Scanner(System.in);
    	n=sc.nextInt();
    	
    	for(int i=1;i<=n;i++)
 	    {
 		   hap=hap+i;
 	    }	
    }
    // 부모클래스의 cal()을 사용하고 싶다면
    // 새로운 메소드를 만든다
    public void super_cal()
    {
    	hap=0;
    	super.cal();
    }
}








