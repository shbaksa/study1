package java_0704;

public class For_Ex {

	public static void main(String[] args) {
        for(int i=1;i<=10;i++)
        {
        	System.out.print("*");
        	// 1번의 반복 분장내에서 또 다른 반복이 필요할 때 *뒤에 %글자를 10개씩 출력하기
        	
        	for(int j=1;j<=i;j++)
        	{	
        	  System.out.print("%");
        	}
        	
        	System.out.println();
        }
 
	}

}
