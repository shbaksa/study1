package first;

public class Sungjuk2 {
	// 국,영,수 점수를 입력받아서 총점과 평균을 구하고 출력하기
	private int kor,eng,mat,hap,avg;
		
	// 값 입력과 출력은 변수에 직접 
	
	// 계산
	public void cal()
	{
		hap=kor+eng+mat;
		avg=hap/3;
	}

}
