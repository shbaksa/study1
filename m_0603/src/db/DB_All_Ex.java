package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class DB_All_Ex {

	private Connection conn;
	private	Scanner sc;
	private int chk=0;
	private String name,phone,sql,db;
	private int bunho,age;	
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	

	DB_All_Ex() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		this.db = "jdbc:mysql://localhost:3306/first";
		Scanner sc = new Scanner(System.in);
		Connection conn = DriverManager.getConnection(this.db, "root", "1234");						
		this.sc=sc;	
		this.conn=conn;	
	}

	public void insert() throws Exception {

		System.out.print("번호입력 : ");
		this.bunho = this.sc.nextInt();
		System.out.print("이름입력 : ");
		this.name = this.sc.next();
		System.out.print("전화번호입력 : ");
		this.phone = this.sc.next();
		System.out.print("나이입력 : ");
		this.age = this.sc.nextInt();

		this.sql = "insert into member(bunho,name,phone,age) values(?,?,?,?)";
		this.pstmt = conn.prepareStatement(sql);
		this.pstmt.setInt(1, this.bunho);
		this.pstmt.setString(2, this.name);
		this.pstmt.setString(3, this.phone);
		this.pstmt.setInt(4, this.age);
		this.pstmt.executeUpdate();
	}

	public void select() throws Exception {

		this.sql = "select * from member";
		this.pstmt = this.conn.prepareStatement(sql);
		this.rs = this.pstmt.executeQuery();
		
		while (this.rs.next()) {
			System.out.print("|" + this.rs.getInt("bunho") + "|");
			System.out.print(this.rs.getString("name") + "|");
			System.out.print(this.rs.getString("phone") + "|");
			System.out.println(this.rs.getInt("age") + "|");
		}

	}

	public void delete() throws Exception {

		System.out.print("삭제하고자 하는 번호 입력 : ");
		this.bunho = this.sc.nextInt();

		this.sql = "delete from member where bunho=?";
		this.pstmt = this.conn.prepareStatement(this.sql);
		this.pstmt.setInt(1, this.bunho);

		this.pstmt.executeUpdate();

	}

	public void update() throws Exception {

		System.out.print("수정할 번호 : ");
		this.bunho = this.sc.nextInt();
		System.out.print("수정할 이름 : ");
		this.name = this.sc.next();
		System.out.print("수정할 전화번호 : ");
		this.phone = this.sc.next();
		System.out.print("수정할 나이 : ");
		this.age = this.sc.nextInt();

		this.sql = "update member set name=? , this.phone=? ,  age=?  where bunho=?";
		this.pstmt = conn.prepareStatement(sql);

		this.pstmt.setInt(4, this.bunho);
		this.pstmt.setString(1, this.name);
		this.pstmt.setString(2, this.phone);
		this.pstmt.setInt(3, this.age);

		this.pstmt.executeUpdate();

	}
	
	public void control() throws Exception {
		do {		
			switch (this.chk) {
			case 1: select();
				break;
			case 2: insert();
				break;
			case 3: delete();
				break;
			case 4: update();
				break;
			}
			System.out.print("1. 조회" + " ");
			System.out.print("2. 입력" + " ");
			System.out.print("3. 삭제" + " ");
			System.out.print("4. 수정" + " ");
			System.out.println("5. 종료");
		} while ((this.chk=this.sc.nextInt()) != 5);
	}
}
