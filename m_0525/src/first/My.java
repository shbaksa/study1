package first;

public class My {
	public void test()
	{
		// 같은 패키지에서 다른 클래스에 접근
		Father fa=new Father(); // 인스턴트화 한다 (객체화 한다)
		fa.money=100;
		fa.pay=99;
		fa.kor=98;
		// fa.phone=97; 에러
	}
		
	

}
