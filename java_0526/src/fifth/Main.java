package fifth;

import java.util.Date;

public class Main {

	public static void main(String[] args) {
		 Date today=new Date();
		 System.out.println(today.getDate());
		 
		 MyDate md=new MyDate();
		 System.out.println(md.getDate());
	}

}
