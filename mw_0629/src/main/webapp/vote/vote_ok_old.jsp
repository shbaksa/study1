<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>


	<%
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
    	String db="jdbc:mysql://localhost:3306/first";
   		Connection conn=DriverManager.getConnection(db,"root","1234");
   		
   		// request
   		String id = request.getParameter("id");
   		// int food = Integer.parseInt(request.getParameter("food"))+1;
		String food = request.getParameter("food");
   		// 쿼리생성					// p1,p2,p3,p4,p5
   		String sql="";
   		
   		/* switch(food){
   		case "0" : sql = "update vote set p1=p1+1 where id=?"; break;
   		case "1" : sql = "update vote set p2=p2+1 where id=?"; break;
   		case "2" : sql = "update vote set p3=p3+1 where id=?"; break;
   		case "3" : sql = "update vote set p4=p4+1 where id=?"; break;
   		case "4" : sql = "update vote set p5=p5+1 where id=?"; break;
   		} */
   		
   		// sql = "update vote set p?=p?+1 where id=?"; // int
   		// sql = "update vote set ?=?+1 where id=?"; // string 안됌
   		sql = "update vote set "+food+"="+food+"+1 where id=?";
   		// 심부름꾼
   		PreparedStatement pstmt = conn.prepareStatement(sql);
   		/* pstmt.setInt(1,food);
   		pstmt.setInt(2,food);
   		pstmt.setString(3, id); */
   		pstmt.setString(1,id);
   		
   		// 쿼리실행
   		pstmt.executeUpdate();
   		
   		// close
   		pstmt.close();
   		conn.close();
   		
   		// 이동
   		response.sendRedirect("vote_view.jsp");
	%>