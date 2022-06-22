package db_ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class DB_All {

	private Connection conn;	
	private PreparedStatement ps;
	private ResultSet rs;
	private Scanner sc;
	private String sql,ti,na,da,db;
	private int pr,id,chk;

	DB_All() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		db = "jdbc:mysql://localhost:3306/first";		
		conn = DriverManager.getConnection(db, "root", "1234");		
		sc = new Scanner(System.in);
	}

	public void select() throws Exception {

		sql = "select * from book";
		ps = conn.prepareStatement(sql);
		rs = ps.executeQuery();
		
		while (rs.next()) {
			System.out.print("|" + rs.getInt("id") + "|");
			System.out.print(rs.getString("title") + "|");
			System.out.print(rs.getString("name") + "|");
			System.out.print(rs.getInt("price") + "|");
			System.out.println(rs.getString("writeday") + "|");
		}

	}

	public void insert() throws Exception {

		System.out.print("제목 : ");
		ti = sc.next();
		System.out.print("저자 : ");
		na = sc.next();
		System.out.print("가격 : ");
		pr = sc.nextInt();
		System.out.print("연도 : ");
		da = sc.next();

		sql = "insert into book(title,name,price,writeday) values(?,?,?,?)";		
		ps = conn.prepareStatement(sql);
		
		ps.setString(1, ti);
		ps.setString(2, na);
		ps.setInt(3, pr);
		ps.setString(4, da);
		ps.executeUpdate();

	}

	public void delete() throws Exception {

		System.out.print("삭제 번호 : ");
		id = sc.nextInt();

		sql = "delete from book where id=?";
		ps = conn.prepareStatement(sql);
		
		ps.setInt(1, id);
		ps.executeUpdate();

	}

	public void update() throws Exception {

		System.out.println("변경할 id : ");
		id = sc.nextInt();
		System.out.print("제목변경 : ");
		ti = sc.next();
		System.out.print("저자변경 : ");
		na = sc.next();
		System.out.print("가격변경 : ");
		pr = sc.nextInt();
		System.out.print("연도변경 : ");
		da = sc.next();

		sql = "update book set tilte=?, name=?, price=? writeday=? where id=?";
		ps = conn.prepareStatement(sql);

		ps.setInt(5, id);
		ps.setString(1, ti);
		ps.setString(2, na);
		ps.setInt(3, pr);
		ps.setString(4, da);
		ps.executeUpdate();

	}

	public void control() throws Exception {

		chk = 0;

		do {
			switch (chk) {
			case 1: select();
				break;
			case 2: insert();
				break;
			case 3: delete();
				break;
			case 4:	update();
				break;
			}

			System.out.print("1. 조회" + " ");
			System.out.print("2. 입력" + " ");
			System.out.print("3. 삭제" + " ");
			System.out.print("4. 수정" + " ");
			System.out.println("5. 종료");
		} while ((chk = sc.nextInt()) != 5);
		System.out.println("종료되었습니다");
	}

}
