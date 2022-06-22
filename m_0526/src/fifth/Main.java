package fifth;

import java.util.Date;

public class Main {

	public static void main(String[] args) {
		
		Date d=new Date();
		System.out.println(d.getDate());
		System.out.println(d.getYear());
		System.out.println(d.getHours());
	
		MyDate md=new MyDate();
		System.out.println(md.getDate());
		

	}

}
