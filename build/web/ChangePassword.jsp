<%-- 
    Document   : changePassword
    Created on : Apr 3, 2017, 11:51:35 PM
    Author     : SMART
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>เปลี่ยนรหัสผ่าน</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/project.css" type="text/css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->


        <style>
            div.container{
                margin: 15px;

            }
        </style>
    </head>
    <body>
        <%if (session.getAttribute("username") == null) {
                response.sendRedirect("Login.html");
            } else {%>
        <div id="header">
            <div id="logo">
                <img src="img/itnew.png" height="100" width="250">
            </div>
        </div>

        <nav class="navbar navbar-inverse" style="background-color: #2196F3;">
            <div class="container-fluid">

                <ul class="nav navbar-nav navbar-left">
                    <div class="dropdown">
                        <button class="dropbtn">ข้อมูลการเรียน</button>
                        <div class="dropdown-content">
                            <a href="GPATable.jsp">ผลการเรียน</a>
                            <a href="Transcript.jsp">ทรานสคริปต์</a>
                        </div>
                    </div>
                    <div class="dropdown">
                        <button class="dropbtn">ลงทะเบียน</button>
                        <div class="dropdown-content">
                            <a href="Authentication.jsp">ตรวจสอบสิทธิ์<br>ก่อนลงทะเบียน</a>
                            <a href="PreRegisterSubject.jsp">ลงทะเบียนล่วงหน้า</a>
                            <a href="RegisterSubject.jsp">ลงทะเบียน</a>
                            <a href="AddChangeDeleteSubject.jsp">เพิ่ม-เปลี่ยน-ถอน</a>
                            <a href="SearchSubject.jsp">ค้นหาวิชาเรียน</a>                           
                        </div>
                    </div>
                    <div class="dropdown">
                        <div class="dropbtn"
                             <li><a href="Assessment.jsp" style="text-decoration:none;">ประเมินอาจารย์</a><li>
                        </div>
                    </div>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="ChangePassword.jsp"><span class="glyphicon glyphicon-user"></span> เปลี่ยนรหัสผ่าน</a></li>
                    <li><a href="LogoutServlet"><span class="glyphicon glyphicon-log-out"></span> ออกจากระบบ</a></li>
                </ul>
            </div>
        </nav>
        <div class="page-header">
            <h1>เปลี่ยนรหัสผ่าน </h1>
        </div>
        <form action="ChangePasswordServlet" method="POST">
            <div class="container">

                รหัสผ่านเดิม <input type="password" name="current_password" value="" /><br>
                รหัสผ่านใหม่ <input type="password" name="new_password" value="" /><br>
                ยืนยันรหัสผ่าน <input type="password" name="confirm_new_password" value="" /><br>
                <button type="submit" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                    ยืนยัน
                </button>

            </div>
        </form>
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery-3.2.0.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <%}%>
    </body>
</html>
