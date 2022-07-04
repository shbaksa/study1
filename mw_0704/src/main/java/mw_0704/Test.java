package mw_0704;
//default패키지는 사용불가
import java.util.Random;

public class Test {
	// 메소드 실행후 값을 전달 유무
	public int rand_num(){
		
		Random rand = new Random();
		
		int num = rand.nextInt(45)+1;
		
		// System.out.println(num);
		
		return num;
	}
	
	public int[] rand_n() {
		
		Random rand = new Random();
		
		
	
			int[] n = new int[10];
			
			for(int i=0;i<n.length;i++)
			n[i] = rand.nextInt(45)+1;
		
			for(int i=0;i<n.length-1;i++) {
			
			
			for(int j=i+1;j<n.length;j++) {
				int imsi;
				if(n[i]>n[j]) {
					imsi=n[i];
					n[i]=n[j];
					n[j]=imsi;
				}
			}
		
		}
		return n;
	
		
		
	
	}
}
