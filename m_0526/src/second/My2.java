package second;

public class My2 extends Father {
	int mat;
	// @어노테이션 안내문
	// @Override 매개변수,객체, 다 같아야 Override가 된다
	public void input(int kor,int eng,int mat)
	{
		this.kor=kor;
		this.eng=eng;
		this.mat=mat;
	}
	// 안내하는 문이여서 지워도 에러는 안난다 
	@Override // 내가 부모클래스에 있는 메소드를 재정의했다고 알려주는거
	public void cal() 
	{
		hap=kor+eng+mat;
	}
	
	// cal() 재정의를 하였으므로 부모의 동작은 X
	// 부모클래스의 cal()을 사용하고 싶다
	public void father_cal()
	{
		super.cal();
		// super는 상속받는 부모클래스를 가리킨다
		
	}

}
