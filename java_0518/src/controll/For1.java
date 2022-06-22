package controll;

public class For1 {

	public static void main(String[] args) {
		/*
		for(초기값;조건식;증가값)
		{
			반복문장;
		}
        */
		// 10번 반복 => i는 1부터 시작
		for(int i=1;i<=10;i++) // i=i+1
		{
		   System.out.println(i+"안녕하세요");
		}
		
		// 10번 반복 => i는 0부터 시작
		for(int i=0;i<10;i++)
		{
		   System.out.println(i+"안녕하세요");
		}
		
		// 10번 반복 => i는 11부터 시작
		for(int i=11;i<=20;i++)
		{
		   System.out.println(i+"안녕하세요");
		}
	}

}
