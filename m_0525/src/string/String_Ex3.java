package string;
import java.util.Scanner;
public class String_Ex3 {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		String card="4567-4561-7916-4616";
		// 잘라서 출력
		// split() : 특정문자로 잘라서 배열로 리턴
		String[] st=card.split("-");
		
		for(int i=0;i<st.length;i++)
		{
			System.out.println(st[i]+"\n");
		}
		String card1=sc.next();
		String[] st1=card1.split("-");
		for(int i=0;i<st1.length;i++)
		{
			System.out.println(st[i]+"\n");
		}
		
		
		

		
		
	}

}
