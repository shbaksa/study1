package exception1;

public class Multi_Ex {
    public static void main(String[] args) {
    	try
    	{
    	  int hap=99;
		  int n=3;
	      int avg=hap/n;
		   System.out.println(avg);
		
		  int[] num=new int[3];
		  num[0]=100;
		  num[1]=99;
		  num[2]=88;
	      //num[3]=77;
	    
	      String str1=null;
		  String str2="호호호";
		  if(str1.equals(str2))
		  {
		     System.out.println("같다");
		  }
    	}
    	
    	catch(ArithmeticException e)
    	{
    		System.out.println("0으로 못 나눠요");
    	}
    	catch(ArrayIndexOutOfBoundsException e)
    	{
    		System.out.println("배열밖이네요");
    	}
    	catch(NullPointerException e)
    	{
    		System.out.println("null값은 비교가 안되요");
    	}
    	catch(Exception e) // 위에 정의되지 않은 모든 예외를 처리할 수 있다...
    	{                  // 단독이 아닌 경우에는 무조건 다른 예외 처리 마지막에 코딩을
    		System.out.println("뭔지 몰라도 예외 발생");
    	}
    	
		System.out.println("계속 진행중");
	}
}
