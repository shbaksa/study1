package first;

public class Father {
	// public : 서로 다른패키지나 다른 클래스에서도 접근이 가능
    public int money;
    // protected : 같은 패키지내에서만 접근이 가능
    // 단, 상속을 하는 클래스는 사용이 가능
    protected int pay;
    // default : 같은 패키지내에서만 접근이 가능
    int kor;
    // private : 같은 클래스에서만 접근이 가능(자신 클래스)
    private int phone;
    
    public void test()
    {
    	money=100;
    	pay=99;
    	kor=88;
    	phone=55;
    }
}
