package java_0524;

public class Test_Main {

	public static void main(String[] args) {
		// Test클래스의 배열과 변수를 전달받아
		// 여기서 값을 변경시켰을때 
		// Test의 값을 출력하면 어떻게 되나?
		Test t=new Test();
		// 배열을 리턴받기
		int[] kor=t.sung();
		// 변수를 리턴받기
		int num=t.test();
		
		// 리턴받은값을 출력
		for(int i=0;i<kor.length;i++)
		{
			System.out.print(kor[i]+" ");
		}
		System.out.println();
		System.out.println(num);
		
		// 리턴 받은 값을 변경
		kor[1]=99;
		num=88;
		
		// 값 변경후에 리턴받은값을 출력
		for(int i=0;i<kor.length;i++)
		{
			System.out.print(kor[i]+" ");
		}
		System.out.println();
		System.out.println(num);
		
		// 왼쪽에 있는 Test클래스의 배열과 변수를 출력
		t.chul();
		t.chul2();
	}

}
