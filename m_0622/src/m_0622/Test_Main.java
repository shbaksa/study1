package m_0622;

public class Test_Main { //싱글톤
	public static void main(String[] args) {
		
		//Test t=new Test();
		
		Test t=Test.getinstance();
		t.print();
		
		Test t1=Test.getinstance();
		
		if(t==t1) 
			System.out.println("같다");
		else
			System.out.println("틀리다");
	}

}
