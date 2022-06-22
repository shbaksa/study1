package exception1;

public class Null_Point {
	
	public static void main(String[] args) {
		
		String str1=null; // null 비어있는값
		String str2="호호호";
		
		System.out.println(str1);
		try
		{
			if(str1.equals(str2))
			{
				System.out.println("같다");
			}
		}
		catch(NullPointerException e)
		{
			System.out.println("Null값은 비교를 하지 못합니다");
		}
		
		System.out.println("다음에 실행될 내용");
		
	}

}
