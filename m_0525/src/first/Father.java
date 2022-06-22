package first;

public class Father {
	
	// 접근제한자 종류 4개
	// public : 서로 다른 패키지나 다른 클래스에서도 접근이 가능
	public int money;
	// protected : 같은 패키지내에서만 접근이 가능
	// 단, 상속을 하는 클래스는 사용이 가능
	protected int pay;
	// default : 같은 패키지내에서만 접근이 가능
	int kor; // default는 앞에 안씀
	// private : 같은 클래스에서만 접근이 가능(자신 클래스)
	private int phone;
	
	public void test()
	{
		// Father fa=new Father();  나중에 써서 해야할때도 있다
		money=100;
		pay=99;
		kor=98;
		phone=97;
	}


}
