package java_0714;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Stack;
import java.util.Vector;

public class Collection_list {

	public static void main(String[] args) {
		// Collection => list, set, map
		// List => 데이터의 중복허용, 순서있음
		// Set => 데이터의 중복허용X , 순서없음
		// Map => 키값, 데이터값 : 키값은 중복X
        // <> => 기본자료형은 사용X
		ArrayList<String> list1=new ArrayList<String>();
		// String자료를 하나씩 저장할 수 있는 공간이 생성
		list1.add("홍길동");
		list1.add("슈퍼맨");
		list1.add("배트맨");
		System.out.println(list1.get(0));  // get(index)
		
		LinkedList<String> list2=new LinkedList<String>();
		list2.add("홍길동");
		list2.add("슈퍼맨");
		list2.add("배트맨");
		System.out.println(list2.get(1));
		
		Vector<String> list3=new Vector<String>();
		list3.add("홍길동");
		list3.add("슈퍼맨");
		list3.add("배트맨");
		System.out.println(list3.get(2));
		
		Stack<String> list4=new Stack<String>();
		list4.add("홍길동");
		list4.add("슈퍼맨");
		list4.add("배트맨");
		System.out.println(list4.get(2));
		
		//List<String> ttt= new 위의 모든 클래스의 생성자를 통해 객체 생성이 가능
	}
	
	
	
	
	
	

}
