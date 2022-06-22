package db;

import java.util.Scanner;

public class DB_All_Main {

	public static void main(String[] args) throws Exception {
		 DB_All da=new DB_All();
		 da.control();
		 /*
		 Scanner sc=new Scanner(System.in);
		 int chk=0;
		 do
		 {
			 switch(chk)
			 {
			    case 1: da.select(); break;
			    case 2: da.insert(); break;
			    case 3: da.delete(); break;
			    case 4: da.update(); break;
			 }
			 
			 System.out.print("1. 조회"+" ");
			 System.out.print("2. 입력"+" ");
			 System.out.print("3. 삭제"+" ");
			 System.out.print("4. 수정"+" ");
			 System.out.println("5. 종료");
		 }while((chk=sc.nextInt()) != 5);
         */
	}

}
