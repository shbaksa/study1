package hap_test;

public class Hap_Test {

	public static void main(String[] args) {
		// 1부터 138까지의 합을 구하기
        int hap=0; // 메인 클래스에서 hap은 0초기화 후 사용 
        for(int i=1;i<=138;i++)
        {
        	hap=hap+i;
        }
        System.out.println(hap);
		// 1부터 100까지의 짝수의 합 구하기
		int hap2=0; // hap=0;
		for(int i=1;i<=100;i++)
		{
			if(i%2 == 0)  // 짝수일때만 참이 발생
			{
			  hap2=hap2+i;
			}
		}
		System.out.println(hap2);
		// 1부터 100까지의 4의 배수의 합 구하기
		int hap3=0; // hap=0;
		for(int i=1;i<=100;i++)
		{
			if(i%4 == 0)  // 4의 배수일때만 참이 발생
			{
			  hap3=hap3+i;
			}
		}
		System.out.println(hap3);
	}

}