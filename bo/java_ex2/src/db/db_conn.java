package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class db_conn {

	public static void main(String[] args) throws Exception {
		
			String dbURL = "jdbc:mariadb://localhost:3306/ex1";
			String dbID = "root";
			String dbPassword = "0000";
			Class.forName("org.mariadb.jdbc.Driver");
			Connection conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

			
			
						
			String sql = "insert into friends(name,address,phone) values('한글','주소',01040400204)";
			
			
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			
	}

}
