package first;

public class MyInfo_Main {

	public static void main(String[] args) {
		MyInfo m=new MyInfo();
		/*
		m.a1("1234");
		String hakbun=m.b1();
		System.out.println(hakbun);
		*/
		// getter,setter이용
		m.setHakbun("123456");
		String hakbun=m.getHakbun();
		System.out.println(hakbun);
	}

}
