/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.1
 * Generated at: 2022-06-17 07:49:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.test;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class content_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\t");

		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
  		String db="jdbc:mysql://localhost:3306/first";
  		Connection conn=DriverManager.getConnection(db,"root","1234");
		// request id값
		String id = request.getParameter("id");
		
		// 쿼리생성
		String sql = "select * from gesipan where id=?";
		
		// 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		// 쿼리실행
		ResultSet rs = pstmt.executeQuery();
		rs.next();
	
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<style>\r\n");
      out.write("\t#del {\r\n");
      out.write("\t\tvisibility : hidden;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\ttable {\r\n");
      out.write("\t\tborder-top : 1px solid black;\r\n");
      out.write("\t\tfont-size : 13px;\r\n");
      out.write("\t}\r\n");
      out.write("\ttd {\r\n");
      out.write("\t\tborder-right : 1px solid black;\r\n");
      out.write("\t\tborder-top : 1px solid black;\r\n");
      out.write("\t}\r\n");
      out.write("\ttd:last-child {\r\n");
      out.write("\t\tborder-right : none;\r\n");
      out.write("\t}\r\n");
      out.write("\ttr {\r\n");
      out.write("\t\tborder-top : 1px solid black;\r\n");
      out.write("\t\tborder-bottom : 1px solid black;\r\n");
      out.write("\t}\r\n");
      out.write("\t#del_td {\r\n");
      out.write("\t\tvisibility : hidden;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("</style>\r\n");
      out.write("<script>\r\n");
      out.write("\tfunction view(n) {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tif(n==0) {\r\n");
      out.write("\t\t\tdocument.getElementById(\"del_td\").style.visibility=\"visible\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"del\").style.visibility=\"visible\";\r\n");
      out.write("\t\t\tdocument.pkc.action=\"update.jsp\";\r\n");
      out.write("\t\t\tdocument.pkc.submit.value=\"수정\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\telse if(n==1) {\r\n");
      out.write("\t\t\tdocument.getElementById(\"del_td\").style.visibility=\"visible\";\r\n");
      out.write("\t\t\tdocument.getElementById(\"del\").style.visibility=\"visible\";\r\n");
      out.write("\t\t\tdocument.pkc.action=\"delete.jsp\";\r\n");
      out.write("\t\t\tdocument.pkc.submit.value=\"삭제\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\telse if(n==2){\r\n");
      out.write("\t\t\tlocation=\"list.jsp\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t<table width=\"800\" height=\"520\" align=\"center\">\r\n");
      out.write("\t<caption><h1>자유게시판</h1></caption>\r\n");
      out.write("\t<tr align=\"center\" style=\"background:lightgray;\">\r\n");
      out.write("\t<td height=\"40\" style=\"border-top:none;\"><h4>제목</h4></td> <!-- 6 -->\r\n");
      out.write("\t<td width=\"320\" style=\"border-top:none;\"> ");
      out.print(rs.getString("title") );
      out.write(" </td>\r\n");
      out.write("\t<td style=\"border-top:none;\"><h4>작성일</h4></td>\r\n");
      out.write("\t<td style=\"border-top:none;\"> ");
      out.print(rs.getString("writeday") );
      out.write("</td>\r\n");
      out.write("\t<td width=\"60\" style=\"border-top:none;\"><h4>조회수</h4></td>\r\n");
      out.write("\t<td width=\"60\" style=\"border-top:none;\"> ");
      out.print(rs.getString("readnum") );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td height=\"40\" align=\"center\" ><h4>이메일</h4></td> <!-- 4 -->\r\n");
      out.write("\t<td colspan=\"2\" width=\"100\">");
      out.print(rs.getString("mail") );
      out.write("</td>\r\n");
      out.write("\t<td align=\"center\"><h4>작성자</h4></td>\r\n");
      out.write("\t<td colspan=\"2\" width=\"200\">");
      out.print(rs.getString("name") );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td colspan=\"1\" height=\"400\" width=\"80\" align=\"center\"> <h4>내용</h4></td> <!-- 2 -->\r\n");
      out.write("\t<td colspan=\"5\">");
      out.print(rs.getString("content").replace("\r\n","<br>") );
      out.write("</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr> <!-- 3 -->\r\n");
      out.write("\t<td colspan=\"1\" height=\"40\" width=\"100\" align=\"left\" style=\"border-bottom:1px solid black; border-right: none;\">\r\n");
      out.write("\t<input type=\"button\" onclick=\"view(0)\" value=\"수정\">\r\n");
      out.write("\t<input type=\"button\" onclick=\"view(1)\" value=\"삭제\"></td>\r\n");
      out.write("\t<td colspan=\"4\" style=\"border-bottom:1px solid black; border-right:none;\" > 비고 </td>\r\n");
      out.write("\t<td align=\"right\" colspan=\"1\" width=\"60\" style=\"border-bottom:1px solid black;\">\r\n");
      out.write("\t<input type=\"button\" onclick=\"view(2)\" value=\"목록\"></td>\r\n");
      out.write("\t</tr>\t\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td id=\"del_td\" colspan=\"6\" align=\"center\" style=\"border-top:hidden;\">\r\n");
      out.write("\t<form name=\"pkc\" id=\"del\" method=\"post\" action=\"\">\r\n");
      out.write("\t<input type=\"hidden\" name=\"id\" value=\"");
      out.print(id);
      out.write("\">\t\r\n");
      out.write("\t<h4>비밀번호</h4> <input type=\"password\" name=\"pwd\">\r\n");
      out.write("\t<input type=\"submit\" name=\"submit\" value=\"\">\r\n");
      out.write("\t</form>\r\n");
      out.write("\t\r\n");
      out.write("\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("\t\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
 // close 
	rs.close();
	pstmt.close();
	conn.close();

    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
