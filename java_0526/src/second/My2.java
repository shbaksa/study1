package second;

public class My2 extends Father{
    // 3과목의 합계를 구해주는 클래스
	int mat;
    
	public void input(int kor,int eng,int mat)
	{
		this.kor=kor;
		this.eng=eng;
		this.mat=mat;
	}
	@Override
	public void cal()
	{
		hap=kor+eng+mat;
	}
	
	// cal()재정의를 하였으므로 부모의 동작은 X
	// 부모클래스의 cal()을 사용하고 싶다
	public void father_cal()
	{
		super.cal();
		// super는 상속받는 부모클래스를 가리킨다.
	}
}

