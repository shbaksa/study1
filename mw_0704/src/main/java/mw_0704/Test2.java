package mw_0704;

public class Test2 {
	
	
	public int hap() {
		int hap=0;
		for(int i=1;i<=100;i++)
			hap+=i;
		
		return hap;
			
	}
	
	public int hap2() {
		
		int hap=0;
		
		for(int i=1;i<=200;i++) {
			
			if(i%2 == 0 )
				hap+=i;
		}
		
		return hap;
	}
	
	public int avg(int kor, int eng, int mat) {
		
		int hap=kor+eng+mat;
		int avg=hap/3;
		
		return avg;
		
	}
}
