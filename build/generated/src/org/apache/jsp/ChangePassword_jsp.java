package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ChangePassword_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n");
      out.write("        <title>เปลี่ยนรหัสผ่าน</title>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/project.css\" type=\"text/css\" rel=\"stylesheet\">\n");
      out.write("        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            div.container{\n");
      out.write("                margin: 15px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
if (session.getAttribute("username") == null) {
                response.sendRedirect("Login.html");
            } else {
      out.write("\n");
      out.write("        <div id=\"header\">\n");
      out.write("            <div id=\"logo\">\n");
      out.write("                <img src=\"img/itnew.png\" height=\"100\" width=\"250\">\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <nav class=\"navbar navbar-inverse\" style=\"background-color: #2196F3;\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("\n");
      out.write("                <ul class=\"nav navbar-nav navbar-left\">\n");
      out.write("                    <div class=\"dropdown\">\n");
      out.write("                        <button class=\"dropbtn\">ข้อมูลการเรียน</button>\n");
      out.write("                        <div class=\"dropdown-content\">\n");
      out.write("                            <a href=\"GPATable.jsp\">ผลการเรียน</a>\n");
      out.write("                            <a href=\"Transcript.jsp\">ทรานสคริปต์</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"dropdown\">\n");
      out.write("                        <button class=\"dropbtn\">ลงทะเบียน</button>\n");
      out.write("                        <div class=\"dropdown-content\">\n");
      out.write("                            <a href=\"Authentication.jsp\">ตรวจสอบสิทธิ์<br>ก่อนลงทะเบียน</a>\n");
      out.write("                            <a href=\"PreRegisterSubject.jsp\">ลงทะเบียนล่วงหน้า</a>\n");
      out.write("                            <a href=\"RegisterSubject.jsp\">ลงทะเบียน</a>\n");
      out.write("                            <a href=\"AddChangeDeleteSubject.jsp\">เพิ่ม-เปลี่ยน-ถอน</a>\n");
      out.write("                            <a href=\"SearchSubject.jsp\">ค้นหาวิชาเรียน</a>                           \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"dropdown\">\n");
      out.write("                        <div class=\"dropbtn\"\n");
      out.write("                             <li><a href=\"Assessment.jsp\" style=\"text-decoration:none;\">ประเมินอาจารย์</a><li>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </ul>\n");
      out.write("\n");
      out.write("                <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                    <li><a href=\"ChangePassword.jsp\"><span class=\"glyphicon glyphicon-user\"></span> เปลี่ยนรหัสผ่าน</a></li>\n");
      out.write("                    <li><a href=\"LogoutServlet\"><span class=\"glyphicon glyphicon-log-out\"></span> ออกจากระบบ</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <div class=\"page-header\">\n");
      out.write("            <h1>เปลี่ยนรหัสผ่าน </h1>\n");
      out.write("        </div>\n");
      out.write("        <form action=\"ChangePasswordServlet\" method=\"POST\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("\n");
      out.write("                รหัสผ่านเดิม <input type=\"password\" name=\"current_password\" value=\"\" /><br>\n");
      out.write("                รหัสผ่านใหม่ <input type=\"password\" name=\"new_password\" value=\"\" /><br>\n");
      out.write("                ยืนยันรหัสผ่าน <input type=\"password\" name=\"confirm_new_password\" value=\"\" /><br>\n");
      out.write("                <input type=\"submit\" value=\"OK\" />\n");
      out.write("                <button type=\"submit\" class=\"btn btn-primary btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\">\n");
      out.write("                    ยืนยัน\n");
      out.write("                </button>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("        <script src=\"js/jquery-3.2.0.min.js\"></script>\n");
      out.write("        <!-- Include all compiled plugins (below), or include individual files as needed -->\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
