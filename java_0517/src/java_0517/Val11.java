package java_0517;

public class Val11 {
    public static void main(String[] args) {
		// 변수에 값을 저장하기, 누적하기
    	
    	int x=100; // x라는 변수에 100이 들어있다..
    	
    	// 새로운 값을 입력하면 => 이전의 값은 없어지고 새로운 값이 저장
    	x=200;
    	System.out.println(x);
    	
    	int y=100;
    	// 새로운 값을 입력할때 이전의 값을 포함시키고자 할때
    	y=y+200;
    	System.out.println(y);
	}
}
