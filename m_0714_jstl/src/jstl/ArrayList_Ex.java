package jstl;

import java.util.ArrayList;

public class ArrayList_Ex {

	public static void main(String[] args) {
		
		ArrayList<String> list = new ArrayList<String>();
		
		// 값넣기 => add() : 중복허용
		
		list.add("홍길동");
		list.add("배트맨");
		list.add("원더우먼");
		list.add("슈퍼맨");
		list.add("배트맨");
		
		// 크기 => size()		
		System.out.println(list.size());
		
		// 꺼내기 => get(index)		
		System.out.println(list.get(2));
		
		System.out.println("==============");
		
		// for문을 통해		
		for(int i=0;i<list.size();i++)
			System.out.println(list.get(i));
		
		System.out.println("==============");
		
		// 값을 바꾸기 => set()
		list.set(4, "뽀로로");
		for(int i=0;i<list.size();i++)
			System.out.println(list.get(i));
		
		System.out.println("==============");
		
		// 찾기 indexOf <-> lastIndexOf()
		int num = list.indexOf("원더우먼");
		System.out.println("원더우먼 index값 : " + num);
		
		System.out.println("==============");
		
		// 지우기 => remove(index)
		list.remove(1);
		for(int i=0;i<list.size();i++)
			System.out.println(list.get(i));
		
		System.out.println("==============");
		
		// 전부 지우기 => clear()
		list.clear();
		System.out.println(list.size());
		
		System.out.println("==============");
		
		// 비었는지 확인
		System.out.println(list.isEmpty());
		list.add("하하하");
		System.out.println(list.isEmpty());
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	}

}
