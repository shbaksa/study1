package this_ex;

public class This_Ex1 {
	// 매개변수로 필요한 값을 가져올때
	// this : 현재 클래스의 별칭
	int kor,eng,mat;
	
	public void input(int kor,int eng,int mat) 
	{					// 80	   70	   90
		this.kor=kor; // 변수를 찾으면 무조건 자기공간부터 찾음 
		this.eng=eng; // 그래서 앞에 this 를 붙이면 전역변수를 찾는다
		this.mat=mat; // 매개변수에서 가져온값을 전역변수 kor,eng,mat 에 저장함
		// 변수 이름을 헷갈리지 않게 쓰기위해 this를 쓴다
		//kor=kor; // 이때는 메소드 안에 있는kor,eng,mat 에서만 값이 저장됨
		//eng=eng;
		//mat=mat;
	}
	// 변수를 호출할때
	public void output()
	{
		System.out.println(kor+eng+mat);
	}

}
