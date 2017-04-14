<%-- 
    Document   : assessment
    Created on : Apr 3, 2017, 11:43:03 PM
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
        <title>ประเมินอาจารย์ผู้สอน</title>

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
    <center>
        <div class="page-header">
            <h1>แบบประเมินอาจารย์ผู้สอน ประจำวิชา Web Programming ประจำปีการศึกษา 2559</h1>
        </div>
    </center>
    <div class="container">
        <table border="0">
            <thead>
                <tr><br><br>หมวดที่ 1
            <th></th>
            <th>5</th>
            <th>4</th>
            <th>3</th>
            <th>2</th>
            <th>1</th>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td>คำถามที่ 1</td>
                    <td><input type="radio" name="name1" value="" /></td>
                    <td><input type="radio" name="name1" value="" /></td>
                    <td><input type="radio" name="name1" value="" /></td>
                    <td><input type="radio" name="name1" value="" /></td>
                    <td><input type="radio" name="name1" value="" /></td>
                </tr>
                <tr>
                    <td>คำถามที่ 2</td>
                    <td><input type="radio" name="name2" value="" /></td>
                    <td><input type="radio" name="name2" value="" /></td>
                    <td><input type="radio" name="name2" value="" /></td>
                    <td><input type="radio" name="name2" value="" /></td>
                    <td><input type="radio" name="name2" value="" /></td>
                </tr>
                <tr>
                    <td>คำถามที่ 3</td>
                    <td><input type="radio" name="name3" value="" /></td>
                    <td><input type="radio" name="name3" value="" /></td>
                    <td><input type="radio" name="name3" value="" /></td>
                    <td><input type="radio" name="name3" value="" /></td>
                    <td><input type="radio" name="name3" value="" /></td>
                </tr>
            </tbody>
        </table>

        <table border="0">
            <thead>
                <tr><br><br>หมวดที่ 2
            <th></th>
            <th>5</th>
            <th>4</th>
            <th>3</th>
            <th>2</th>
            <th>1</th>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td>คำถามที่ 1</td>
                    <td><input type="radio" name="name4" value="" /></td>
                    <td><input type="radio" name="name4" value="" /></td>
                    <td><input type="radio" name="name4" value="" /></td>
                    <td><input type="radio" name="name4" value="" /></td>
                    <td><input type="radio" name="name4" value="" /></td>
                </tr>
                <tr>
                    <td>คำถามที่ 2</td>
                    <td><input type="radio" name="name5" value="" /></td>
                    <td><input type="radio" name="name5" value="" /></td>
                    <td><input type="radio" name="name5" value="" /></td>
                    <td><input type="radio" name="name5" value="" /></td>
                    <td><input type="radio" name="name5" value="" /></td>
                </tr>
                <tr>
                    <td>คำถามที่ 3</td>
                    <td><input type="radio" name="name6" value="" /></td>
                    <td><input type="radio" name="name6" value="" /></td>
                    <td><input type="radio" name="name6" value="" /></td>
                    <td><input type="radio" name="name6" value="" /></td>
                    <td><input type="radio" name="name6" value="" /></td>
                </tr>
            </tbody>
        </table>
        <br>

        <input type="submit" value="ยืนยัน" />
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <%}%>
</body>
</html>
