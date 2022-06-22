
public class Test_Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
       //Test t=new Test();
		Test t=Test.getinstance();
 		
		Test t1=Test.getinstance();
		
		if(t==t1)
			System.out.println("같다");
		else
			System.out.println("틀리다");
	}

}
