package fourth;

public class My extends Father{
   My()
   {
	   //super(); 
	   // 부모클래스의 생성자를 생략해도 동작한다.
	   // My()생성자를 호출하면 동작을 하기전에
	   // 상속을 받았는지 확인
	   // 상속을 받았다면 자동으로 부모클래스의 생성자 호출
	   System.out.println("My");
   }
   int eng;
   public void test()
   {
	   System.out.println("목요일");
   }
}
