package controll;

public class Continue1 {

	public static void main(String[] args) {
		// for문에서 continue
		for(int i=1;i<=10;i++)
		{
			System.out.println(i+"출력");
			if(i%2 == 0)
			{
				continue;
			}
			System.out.println("하하하");
		}

	}

}
