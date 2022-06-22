package first;

public class Sungjuk {
	// 국,영,수 점수를 입력받아서 총점과 평균을 구하고 출력하기
	private int kor,eng,mat,hap,avg;
	
	// 값입력(매개변수)
	public void input(int kor,int eng,int mat)
	{
		this.kor=kor;
		this.eng=eng;
		this.mat=mat;
	}
	// 계산
	public void cal()
	{
		hap=kor+eng+mat;
		avg=hap/3;
	}
	
	// 출력(리턴값)
	public int avgreturn()
	{
		return avg;
	}
	public int hapreturn()
	{
		return hap;
	}

}
