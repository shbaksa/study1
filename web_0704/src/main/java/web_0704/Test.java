package web_0704;
// default패키지는 사용불가

import java.util.Random;

public class Test {
	// 메소드 실행후 값을 전달유무
    public int rand_num()
    {
        Random rand=new Random();
    	  
        int num=rand.nextInt(45)+1;
        
        //System.out.println(num);
        return num;
    }
}
