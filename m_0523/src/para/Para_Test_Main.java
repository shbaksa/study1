package para;

public class Para_Test_Main {

	public static void main(String[] args) {
		//
		Para_Test pt = new Para_Test();
		pt.test1(11,11,11,11);
		pt.test2('a');
		pt.test3(1.2f, 1.3);
		long t= 1234567890123456789L;
		pt.test4(true);
		// 배열 , 클래스 
		// 배열의 초기화 (,로 구분된 값)
		int [] lotto = {12,5,6,25,38,41};		
		pt.test5(lotto);
		
		String name="홍길동";
		int age=33;
		String juso="서울시";
		double height=175.8;
		char kor='A';
		
		// 클래스를 통해 전달
		DateBox db= new DateBox();
		db.name=name;
		db.age=age;
		db.juso=juso;
		db.height=height;
		db.kor=kor;
		
		pt.test6(db);
	
	
	}

}
