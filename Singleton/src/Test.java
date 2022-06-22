
public class Test {
   private static Test t;
   private Test() // 생성자가 private
   {
	   
   }
   // 객체를 생성하여 return해주는 메소드를 만든다
   public static Test getinstance()
   {
	   if(t==null)
	   {
	      t=new Test();
	   }
	   return t;
   }
   public void print()
   {
	   System.out.println("하하");
   }
}
