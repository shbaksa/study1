package static_ex;

public class Static_Ex {
    int kor;
    static int eng;
    
    public void output()
    {
    	System.out.println(kor);
    	System.out.println(eng);
    	System.out.println("output");
    }
    public static void print()
    {
    	// static메소드에서는 static변수만 사용가능
    	//System.out.println(kor);
    	System.out.println(eng);
    	System.out.println("print");
    }
}
