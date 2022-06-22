package m_0524;

public class Test {
	int[] kor = new int[3];
	int num;
	// 배열이라는 객체를 전달 // 주소전달? // 참조,객체
	public int[] sung() // 동일한 주소를 넘겨서 같은 메모리에 저장되서 메인클래스에서 배열의 값을 새로 주면 같은 메모리(방)에 저장되있어서 값이 바뀐다
	{
		kor[0]=10;
		kor[1]=20;
		kor[2]=40;	
		
		return kor;
	}
	// 변수를 전달 // 값
	public int test() // 변수값만 전달을하고 메인클래스에서 같은 'num' 으로 변수를 지정한다면 다른 메모리(방)에 생성되서 서로 다른 값이 저장된다
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
