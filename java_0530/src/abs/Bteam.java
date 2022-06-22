package abs;

public class Bteam  extends Abstract{

	@Override
	void check() {
		if(kor >= 90)
		{
			System.out.println("A학점 성공");
		}
		else
		{
			System.out.println("A학점 실패");
		}
	}

}
