package second;

public class Main {

	public static void main(String[] args) {
		/*
		My my=new My();
		// 2과목을 처리
		my.input(80,90);
		my.cal();
		my.output();
		
		// 3과목을 처리
		
		my.input2(80, 70, 90);
		my.cal2();
		my.output();
		*/
		
		My2 my2=new My2();
		my2.input(80, 90, 60);
		my2.cal();
		my2.output();
	
		my2.input(80, 70);
		my2.father_cal();
		my2.output();

	}

}
