package db;

import java.util.Scanner;

public class DB_Insert {

	int bunho,age;
	String name,phone;

	public void input() {
		
		Scanner sc=new Scanner(System.in);
		System.out.print("번호입력 : ");
		this.bunho=sc.nextInt();
		System.out.println("이름입력 : ");
		this.name=sc.next();
		System.out.println("핸드폰번호 입력 : ");
		this.phone=sc.next();
		System.out.println("나이 입력 : ");
		this.age=sc.nextInt();
		
		sc.close();
		
	}

}
