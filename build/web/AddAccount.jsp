<%-- 
    Document   : AddAccount
    Created on : Apr 3, 2017, 11:36:43 PM
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
        <title>เพิ่มผู้ใช้งาน</title>

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
                margin: 100px 150px 100px 150px;
            }
            .input-group{
                width: 30%;
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
                        <button class="dropbtn">จัดการผู้ใช้</button>
                        <div class="dropdown-content">
                            <a href="AddAccount.jsp">เพิ่มผู้ใช้งาน</a>
                            <a href="DeleteAccount.jsp">ลบผู้ใช้งาน</a>
                        </div>
                    </div>
                    <div class="dropdown">
                        <div class="dropbtn"
                             <li><a href="AddSubject.jsp" style="text-decoration:none;">เพิ่มวิชาเรียน</a><li>
                        </div>
                    </div>
                    <div class="dropdown">
                        <div class="dropbtn"
                             <li><a href="Opensection.jsp" style="text-decoration:none;">เปิดกลุ่มการเรียน</a><li>
                        </div>
                    </div>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="ChangePassword.jsp"><span class="glyphicon glyphicon-user"></span> เปลี่ยนรหัสผ่าน</a></li>
                    <li><a href="LogoutServlet"><span class="glyphicon glyphicon-log-out"></span> ออกจากระบบ</a></li>
                </ul>
            </div>
        </nav>
        <!-- content -->
        <div class="page-header">
            <h1>เพิ่มผู้ใช้งาน </h1>
        </div>
        <div class="container">


            <center>
                <form action="AddAccountServlet" method="POST">
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon1">ชื่อผู้ใช้</span>
                        <input type="text" class="form-control" name="username" placeholder="Username" aria-describedby="basic-addon1">
                    </div><br>
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon1">ชื่อจริง</span>
                        <input type="text" class="form-control" name="firstname" placeholder="Firstname" aria-describedby="basic-addon1">
                    </div><br>
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon1">นามสกุล</span>
                        <input type="text" class="form-control" name="lastname" placeholder="Lastname" aria-describedby="basic-addon1"z>
                    </div><br>
                    สถานภาพ: <select class="custom-select" name="type">
                        <option value="student" >นักศึกษา </option>
                        <option value="teacher" >อาจารย์</option>
                        <option value="admin">เจ้าหน้าที่</option>
                    </select><br><br>
                    <!-- Button trigger modal -->
                    <input type="submit" value="yeah!" />
                    <!--<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                        Submit
                    </button>-->
                </form>

            </center>
            <!-- Modal --> <!--
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                        </div>
                        <div class="modal-body">
                            ยืนยันการเพิ่มผู้ใช้งาน
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
            -->

        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery-3.2.0.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <%}%>
    </body>
</html>
