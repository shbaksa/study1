/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.1
 * Generated at: 2022-06-14 03:42:38 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board2;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class write_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<style>\r\n");
      out.write("\ttable {\r\n");
      out.write("\t\tborder : 1px solid black;\r\n");
      out.write("\t\tborder-spacing : 0px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tinput[type=text] , input[type=password] {\r\n");
      out.write("\t\twidth:200px;\r\n");
      out.write("\t\theight:26px;\r\n");
      out.write("\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t#title {\r\n");
      out.write("\t\twidth:400px;\r\n");
      out.write("\t}\r\n");
      out.write("\ttextarea {\r\n");
      out.write("\t\twidth : 400px;\r\n");
      out.write("\t\theight : 100px;\r\n");
      out.write("\t}\r\n");
      out.write("\ttd {\r\n");
      out.write("\t\tpadding-top:10px;\r\n");
      out.write("\t}\r\n");
      out.write("\tinput[type=submit] {\r\n");
      out.write("\t\twidth:300px;\r\n");
      out.write("\t\theight:40px;\r\n");
      out.write("\t\tborder:1px solid red;\r\n");
      out.write("\t\tcolor:red;\r\n");
      out.write("\t\tfont-size:20px;\r\n");
      out.write("\t\tbackground:white;\r\n");
      out.write("\t\tborder-radius:10px;\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\tinput[type=submit]:hover {\r\n");
      out.write("\t\tcolor:white;\r\n");
      out.write("\t\tbackground:red;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t\r\n");
      out.write("\t");
 
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/first";
	Connection conn = DriverManager.getConnection(db, "root", "1234"); 
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<form method=\"post\" action=\"write_ok.jsp\">\r\n");
      out.write("\t<table width=\"700\" border=\"0\" align=\"center\" > \r\n");
      out.write("\t<caption><h2> 게시판 글쓰기 </h2></caption>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td> 제 목</td>\r\n");
      out.write("\t<td> <input type=\"text\" name=\"title\" id=\"title\" ></td>\r\n");
      out.write("\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td > 이 름</td>\r\n");
      out.write("\t<td><input type=\"text\" name=\"name\" ></td>\r\n");
      out.write("\t\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td > 내 용</td>\r\n");
      out.write("\t<td><textarea cols=\"80\" rows=\"5\" name=\"content\"></textarea></td>\r\n");
      out.write("\t\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td > 비 번</td>\r\n");
      out.write("\t<td><input type=\"password\" name=\"pwd\" ></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td > 지 역</td> <!-- radio, checkbox 는 체크안하고 넘어가면 null값으로 넘어감 -->\r\n");
      out.write("\t<td> <input type=\"radio\" name=\"area\" value=\"0\">서울\r\n");
      out.write("\t<input type=\"radio\" name=\"area\" value=\"1\">경기\r\n");
      out.write("\t<input type=\"radio\" name=\"area\" value=\"2\">강원\r\n");
      out.write("\t<input type=\"radio\" name=\"area\" value=\"3\">충청\r\n");
      out.write("\t<input type=\"radio\" name=\"area\" value=\"4\">전라\r\n");
      out.write("\t<input type=\"radio\" name=\"area\" value=\"5\">경상\r\n");
      out.write("\t<input type=\"radio\" name=\"area\" value=\"6\">제주\r\n");
      out.write("\t</td>\t\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td colspan=\"2\" > <input type=\"checkbox\" name=\"bimil\" value=\"1\"> 체크하시면 해당글은 비밀글이 됩니다.</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t<td colspan=\"2\" align=\"center\" > <input type=\"submit\" value=\"글쓰기\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("\t</form>\r\n");
      out.write("</body>\r\n");
      out.write("\t\r\n");
      out.write("</html>");
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
