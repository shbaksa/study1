package java_0523;

public class This_Ex1 {
	// 매개변수로 필요한 값을 가져올때
	// this : 현재 클래스의 별칭
    int kor,eng,mat;
    public void input(int kor,int eng,int mat)
    {               //  80       70       90
    	this.kor=kor;
    	this.eng=eng;
    	this.mat=mat;
    }
    // 변수를 호출할때 
    public void output()
    {
    	System.out.println(kor+eng+mat);
    }
}
