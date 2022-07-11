package board;

import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDaoo {

	// 모든메소드에서 사용할 수 있게 전역변수(멤버변수)
	Connection conn;
	ResultSet rs;
	PreparedStatement pstmt;
	String sql = "";
	String name, id, content, title, pwd;

	// write_ok , list , content 등등 모든 자바처리부분을 여기에 메소드
	// 모든 메소드가 DB 여결을 하므로 소스 중복을 하지 않게
	// 생성자에서 처리한다.
	public BoardDaoo() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first";
		conn = DriverManager.getConnection(db, "root", "1234");
	}

	public void input(HttpServletRequest request , HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		name = request.getParameter("name");
		pwd = request.getParameter("pwd");
		content = request.getParameter("content");
		title = request.getParameter("title");

		sql = "insert into board1(name,pwd,content,title,writeday) values(?,?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, pwd);
		pstmt.setString(3, content);
		pstmt.setString(4, title);
		pstmt.executeUpdate();

		pstmt.close();
		conn.close();
		
		response.sendRedirect("list.jsp");
	}

	public void readnum(HttpServletRequest request , HttpServletResponse response) throws Exception {

		id = request.getParameter("id");
		sql = "update board1 set readnum=readnum+1 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("content.jsp?id="+id);
	}

	public ResultSet list(HttpServletRequest request) throws Exception {
		
		//reqeuset
		// 사용자의 페이지가 들어오면 페이지를 이용하여 index(페이지의 시작번호)를 구하기
		// 사용자가 원하는 페이지를 변수에 저장
		
		int page;
		if(request.getParameter("page") == null)
			page=1;
		else
			page=Integer.parseInt(request.getParameter("page"));
		//시작인덱스 구하기
		int index=(page-1)*10;
		
		sql = "select * from board1 order by id desc limit ?,10";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,index);

		rs = pstmt.executeQuery();

		return rs;
	}
	
	// pstart값 구하여 전달하기
	public int[] getpage(HttpServletRequest request) throws Exception {
		
		int page;
		if(request.getParameter("page") == null)
			page=1;
		else
			page=Integer.parseInt(request.getParameter("page"));
		
		int imsi = page/10;
		if(page%10 == 0)
			imsi--;
		int pstart = imsi*10+1;
		int pend=pstart+9;
		sql = "select ceil(count(*)/10) as chong from board1";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		rs.next();
		
		int chong = rs.getInt("chong");
		if(pend > chong)
			pend=chong;
		
		return new int[] {pstart,chong,page,pend};
	}

	public ResultSet content(HttpServletRequest request) throws Exception {

		id = request.getParameter("id");
		sql = "select * from board1 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();

		return rs;
	}
	
	public String getpwd(String id) throws Exception {
		sql="select pwd from board1 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		rs.next();
		return rs.getString("pwd");
	}
	
	public void update(HttpServletRequest request , HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		id = request.getParameter("id");
		pwd = request.getParameter("pwd");
		name = request.getParameter("name");
		title = request.getParameter("title");
		content = request.getParameter("content");
		
		String dbpwd = getpwd(id); // DB비밀번호 호출

		if(pwd.equals(dbpwd)) {
		sql = "update board1 set name=?, title=?, content=? where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, title);
		pstmt.setString(3, content);
		pstmt.setString(4, id);
		pstmt.executeUpdate();

		pstmt.close();
		conn.close();
		
		response.sendRedirect("content.jsp?id="+id);
		}
		else {
			/*
			 * String ck = "passwordcheck"; pstmt.close(); conn.close();
			 * response.sendRedirect("update.jsp?id="+id+"&name="+name+"&content="+content+
			 * "&title="+title+"&ck=789798");
			 * //response.sendRedirect("update.jsp?id="+id+"&ck=1");
			 */		
			
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('비밀번호오류');location.href='update1.jsp?id="+id+"'</script>");
			out.flush();
		}
	   System.out.print("하하");
	}

	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {

		id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		sql = "select pwd from board1 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		rs.next();
		String dbpwd = rs.getString("pwd");
		
		
		if(pwd.equals(dbpwd)) {
		sql = "delete from board1 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();

		pstmt.close();
		conn.close();
		
		response.sendRedirect("list.jsp");
		}
		else
			
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('비밀번호오류');location.href='content.jsp?id="+id+"'</script>");
			out.flush();
			//response.sendRedirect("content.jsp?id="+id+"&ck=1");
	}
	
	public void close() throws Exception{
		
		pstmt.close();
		conn.close();
	}

}
