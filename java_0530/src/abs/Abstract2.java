package abs;

public abstract class Abstract2 {
   // 추상클래스의 생성자(매개변수)
   Abstract2(String name)
   {
	   System.out.println("부모"+name);
   }
   
   abstract void test();
}
