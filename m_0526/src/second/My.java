package second;

public class My extends Father {
	// 2과목이 들어오면 국어,영어의 합계출력
	// 3과목이 들어오면 국어,영어,수학의 합계출력
	int mat;
	
	public void input(int kor,int eng,int mat)
	{
		this.kor=kor;
		this.eng=eng;
		this.mat=mat;
	}
	
	public void cal()
	{
		hap=kor+eng+mat;
	}
	
	

}
