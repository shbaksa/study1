package hap_test;

public class Hap_Class {
	int hap = 0, hap1 = 0, hap2; //노란색 멤버변수는 0초기화 // 파란색 멤버변수는 객체생성될때 0으로 초기화
	// 메인클래스가 아닌 클래스에서는 hap은 메인에서 불러올때 0으로 초기화 되기때문에 0으로 변수값 저장할필요없음
	// 클래스의 멤버변수의 숫자형 변수는
	// 객체가 생성될때 0으로 초기화

	public void Ex1() {
		for (int i = 1; i <= 138; i++)
		{
			hap = hap + i;
		}
		System.out.println(hap);
	}

	public void Ex2() {

		for (int i = 1; i <= 100; i++) 
		{
			if (i % 2 == 0) {
				hap1 = hap1 + i;
			}

		}
		System.out.println(hap1);
	}

	public void Ex3() {

		for (int i = 1; i <= 100; i++) 
		{
			if (i % 4 == 0) {
				hap2 = hap2 + i;
			}
		}
		System.out.println(hap2);
	}

}
