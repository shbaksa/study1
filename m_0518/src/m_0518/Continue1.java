package m_0518;

public class Continue1 {

	public static void main(String[] args) {
		// for문에서 continue사용
		
		for(int i=1; i<=10; i++)
		{
			System.out.println(i+"출력값");
			if(i%2 == 0)
			{
				
				continue;
			}
			System.out.println("하하");
		
		}

	}

}
