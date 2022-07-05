package java_0704;

import java.util.Arrays;
import java.util.Random;

public class Array2 {

	public static void main(String[] args) {
		int[] num=new int[10];
	    Random rand=new Random();
	    for(int i=0;i<num.length;i++)
	    {
	    	num[i]=rand.nextInt(45)+1;	    	
	    }

	    for(int i=0;i<num.length;i++)
	    {  
	        System.out.print(num[i]+" ");
	    }
	    System.out.println();
	    
	    // java에서 제공되는 라이브러리 이용
	    Arrays.sort(num);
	    
	    for(int i=0;i<num.length;i++)
	    {  
	        System.out.print(num[i]+" ");
	    }
	    System.out.println();
	    for(int i=num.length-1;i>=0;i--)
	    {  
	        System.out.print(num[i]+" ");
	    }
	}

}

/*
 10개 
 0 1 2 3 4 5 6 7 8 9  
 for(int i=0;i<배열.length;i++)

 9 8 7 6 5 4 3 2 1 0
  for(int i=배열.length-1;i >= 0 ; i--)
 */








