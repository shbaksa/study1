package const_ex;

public class Const_Ex3 {
	// 생성자는 이름이 같게 설계할수 있다.
	// 단 구분할수 있는 것 => 매개변수의 갯수와 자료형
	// 매개변수의 갯수가 같다면 자료형이 틀려야 된다.
	Const_Ex3(){}
	Const_Ex3(int a){System.out.println("int");}
	Const_Ex3(byte b){System.out.println("byte");}
	
	Const_Ex3(int a,int b,char c){}
	Const_Ex3(String a,int b,int c){}
	Const_Ex3(double a,int b,int c){}
	


}
/*
 // 안됌
Const_Ex3(int a){}
Const_Ex3(int b){}
*/