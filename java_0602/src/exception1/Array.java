package exception1;

public class Array {

	public static void main(String[] args) {

		 try
		 {
		   int[] num=new int[3];
		   num[0]=100;
		   num[1]=99;
		   num[2]=88;
  	       num[3]=77;
		 
		   System.out.println("다음에 실행될 내용");
		 }
		 catch(ArrayIndexOutOfBoundsException e)
		 {
			 System.out.println("배열밖으로 ");
		 }
		 
		 System.out.println("계속 실행중");
	}

}
