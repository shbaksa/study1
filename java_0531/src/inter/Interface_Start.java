package inter;

public interface Interface_Start {
    public final static int a=100;
    int b=88;
    // 인터페이스에 변수를 선언 
    // - 무조건 final 속성을 가진다.
    // - static 속성을 가진다
    // - public만 된다
    
    // 인터페이스는 주로 추상메소드를 가진다..
    public void print();
    void chul();
    
    // 인터페이스는 추상메소드를 가진다. => default메소드, static메소드가 추가 가능
    default void test()
    {
    	System.out.println("하하");
    }
    static void output()
    {
    	System.out.println("출력");
    }
}
