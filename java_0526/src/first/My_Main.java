package first;

public class My_Main {

	public static void main(String[] args) {
		 My_Num mn=new My_Num();
		 for(int i=1;i<=6;i++)
		 {
           int num=mn.random();
           System.out.print(num+" ");
		 }
	}

}
