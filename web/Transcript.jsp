<%-- 
    Document   : transcript
    Created on : Apr 3, 2017, 11:57:48 PM
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
        <title>transcript</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/project.css" type="text/css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
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
            <h1>Transcript</h1>
        </div>
        Faculty of	 Information Technology<br>
        Department of	 Information Technology<br>
        <table style="width:75%">
            <th> </th>
            <th> </th>
            <tr>
                <td> Name</td>
            </tr>
            <tr>
                <td>Date</td>
                <td>Student ID</td>
            </tr>
            <tr>
                <td>Date of Admission </td>
                <td>Date of Graduation   N/A (สถานะ: เรียน)</td>
            </tr>
            <tr>
                <td>Degree  Bachelor of Science</td>
            </tr
            <tr>
                <td>Major   Information Technology</td>
            </tr>
        </table>
        <br>
        <table style="width:100%">
            <tr>
                <th> </th>
                <th>COURSE TITLE</th>    
                <th>CREDIT</th>    
                <th>GRADE</th> 
            </tr>
            <br><br>
            <tr>
                1st Semester, Year, 2015-2016 (1/2558)
                <td>06016200</td>  
                <td>PROBABILITY AND STATISTICS</td>
                <td>3</td>
                <td>A</td>
            </tr>
            <tr>
                <td>06016205</td>
                <td>INTRODUCTION TO COMPUTER SYSTEMS</td>
                <td>3</td>
                <td>A</td>
            </tr>
            <tr>
                <td>06016209</td>
                <td>BUSINESS FUNDAMENTALS FOR INFORMATION</td>
                <td>3</td>
                <td>A</td>	</tr>

        </table>
        GPS : 4.00 GPA:4.00

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <%}%>
    </body>
</html>
