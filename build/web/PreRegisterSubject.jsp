<%-- 
    Document   : PreRegisterSubject
    Created on : Apr 3, 2017, 11:23:38 PM
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
        <title>ลงทะเบียนเรียนล่วงหน้า</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link href="css/project.css" type="text/css" rel="stylesheet">
        <style>

            .container{
                padding-left: 360px;

            }

            .title{
                padding-left: 20px;
            }

            .btn-bottomleft{
                margin-left: 133px;
                padding: 15px;
            }

            .btn-bottomright{
                padding: 15px;
            }


            /*** Table Styles **/

            .table-fill {
                background: white;
                border-radius:3px;
                border-collapse: collapse;
                height: 200px;
                margin: auto;
                margin-bottom: 10px;
                max-width: 1100px;
                padding:5px;
                width: 100%;
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
                animation: float 5s infinite;
            }

            th {
                color:white;;
                background:#2196F3;
                border-bottom:4px solid #9ea7af;
                border-right: 1px solid #343a45;
                font-size:16px;
                font-weight: 100;
                padding:10px;
                text-align:left;
                text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
                vertical-align:middle;
            }

            th:first-child {
                border-top-left-radius:3px;
            }

            th:last-child {
                border-top-right-radius:3px;
                border-right:none;
            }

            tr {
                border-top: 1px solid #C1C3D1;
                border-bottom: 1px solid #C1C3D1;
                color:black;
                font-size:10px;
                font-weight:normal;
                text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
            }

            tr:hover td {
                background:#d9dae0;

                border-top: 1px solid #22262e;
                border-bottom: 1px solid #22262e;
            }

            tr:first-child {
                border-top:none;
            }

            tr:last-child {
                border-bottom:none;
            }

            tr:nth-child(odd) td {
                background:#EBEBEB;
            }

            tr:nth-child(odd):hover td {
                background:#d9dae0;
            }

            tr:last-child td:first-child {
                border-bottom-left-radius:3px;
            }

            tr:last-child td:last-child {
                border-bottom-right-radius:3px;
            }

            td {
                background:#FFFFFF;
                padding:10px;
                text-align:left;
                vertical-align:middle;
                font-weight:100;
                font-size:15px;
                text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
                border-right: 1px solid #C1C3D1;
            }

            td:last-child {
                border-right: 0px;
            }

            th.text-left {
                text-align: left;
            }

            th.text-center {
                text-align: center;
            }

            th.text-right {
                text-align: right;
            }

            td.text-left {
                text-align: left;
            }

            td.text-center {
                text-align: center;
            }

            td.text-right {
                text-align: right;
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
        <form action="ChangeSubjectServlet" method="POST">
            <div class="title">
                <h1>ลงทะเบียนเรียนล่วงหน้า</h1>
            </div>
            <div class="container">
                รหัสนักศึกษา : 58070020 &nbsp;&nbsp;&nbsp; ชื่อ-สกุล : นายฉัตรชัย วงศ์เดชสกุล &nbsp;&nbsp;&nbsp; ภาคเรียนที่ 2/2559<br>
                <br>
            </div>
            <table class="table-fill">
                <thead>
                    <tr>
                        <th class="text-left">ID</th>
                        <th class="text-left">Name</th>
                        <th class="text-left">Credit</th>
                        <th class="text-left">Section</th>
                        <th class="text-left">Time</th>
                        <th class="text-left">No# study student</th>
                    </tr>
                </thead>
                <tbody class="table-hover">
                    <tr>
                        <td class="text-left">06016203</td>
                        <td class="text-left">PROBABILITY AND STATISTICS</td>
                        <td class="text-left">3</td>
                        <td class="text-left">
                            <select name="section">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                            </select>
                        </td>
                        <td class="text-left">อ.09:00-12:00 น.</td>
                        <td class="text-left">60</td>
                    </tr>
                    <tr>
                        <td class="text-left">06016214</td>
                        <td class="text-left">COMPUTER NETWORKING FOR ENTERPRISE AND ISP</td>
                        <td class="text-left">3</td>
                        <td class="text-left">
                            <select name="section">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                            </select>
                        </td>
                        <td>พฤ.13:00-16:00 น. (ท)</td>
                        <td>58</td>
                    </tr>
                    <tr>
                        <td class="text-left">06016215</td>
                        <td class="text-left">WEB PROGRAMMING</td>
                        <td class="text-left">3</td>
                        <td class="text-left">
                            <select name="section">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                            </select>
                        </td>
                        <td class="text-left">พ.09:00-11:00 น. (ท)</td>
                        <td class="text-left">55</td>
                    </tr>
                    <tr>
                        <td class="text-left">06016216</td>
                        <td class="text-left">INFORMATION SYSTEMS ANALYSIS AND DESIGN</td>
                        <td class="text-left">3</td>
                        <td class="text-left">
                            <select name="section">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                            </select>
                        </td>
                        <td class="text-left">พฤ.09:00-12:00 น. (ท)</td>
                        <td class="text-left">55</td>
                    </tr>
                    <tr>
                        <td class="text-left"><input type="text" name="input" value="" size="8"/></td>
                        <td class="text-left"></td>
                        <td class="text-left"></td>
                        <td class="text-left"></td>
                        <td class="text-left"></td>
                        <td class="text-left"></td>
                    </tr>
                </tbody>
            </table>
            <input class="btn btn-success btn-bottomleft" type="submit" value="ลงทะเบียน" name="register" />
        </form>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery-3.2.0.min"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <%}%>
    </body>
</html>
