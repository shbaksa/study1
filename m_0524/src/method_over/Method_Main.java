package method_over;

public class Method_Main {

	public static void main(String[] args) {
		Method mt=new Method();
		mt.output(); // 외부에서는 객체 생성후에 호출을 해서 사용
		// 다른 클래스에서는 메소드를 호출하려면
		// 해당 클래스의 객체를 생성한 뒤 
		// 객체.메소드(); 통해서 호출한다
		mt.test();
		
	}

}
