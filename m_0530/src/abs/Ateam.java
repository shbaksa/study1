package abs;

public class Ateam extends Abstract {

	@Override
	void check() {
		if(kor >= 60)
		{
			System.out.println("합격");
		}
		else
		{
			System.out.println("불합격");
		}
		
	}

}
