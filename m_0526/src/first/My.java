package first;
				// 상속 Father에 있는게 다 물려받는다
public class My extends Father { // 다중상속은 안된다
	
	public void input2(int kor)
	{
		this.kor=kor; // 쉽게 적용가능
	}
	
	
	/* 매번 Father 를 불러오는건 귀찮
	public void test()
	{
		Father f=new Father();
		f.input(80,90);
		f.cal();
		f.output();		
	}
	public void tt()
	{
		Father f=new Father();
	}
	*/
}
