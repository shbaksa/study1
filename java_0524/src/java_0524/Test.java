package java_0524;

public class Test {
    int[] kor=new int[3];
    int num;
    // 배열이라는 객체를 전달
    public int[] sung()
    {
    	kor[0]=10;
    	kor[1]=20;
    	kor[2]=40;
    	
    	return kor;
    }
    // 변수를 전달
    public int test()
    {
    	num=100;
    	return num;
    }
    // 배열을 출력
    public void chul()
    {
    	for(int i=0;i<kor.length;i++)
    	{
    		System.out.print(kor[i]+" ");
    	}
    	System.out.println();
    }
    // 변수를 출력
    public void chul2()
    {
    	System.out.println(num);
    }
    
}
