<%-- 
    Document   : opensection
    Created on : Apr 3, 2017, 11:57:05 PM
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
        <title>เปิดกลุ่มการเรียน</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link href="css/project.css" type="text/css" rel="stylesheet">
        <script type='text/javascript'>
            function addFields() {
                // Number of inputs to create
                var number = document.getElementById("member").value;
                // Container <div> where dynamic content will be placed
                var container = document.getElementById("demo");
                // Clear previous contents of the container
                while (container.hasChildNodes()) {
                    container.removeChild(container.lastChild);
                }
                for (i = 0; i < number; i++) {
                    container.appendChild(document.createTextNode("ห้อง "));
                    // Create an <input> element, set its type and name attributes
                    var inputroom = document.createElement("input");
                    inputroom.type = "text";
                    inputroom.name = "member" + i;
                    container.appendChild(inputroom);

                    // Append a line break 
                    container.appendChild(document.createTextNode("เวลา "));
                    var inputtime = document.createElement("input");
                    inputtime.type = "time";
                    inputtime.name = "member" + i;
                    container.appendChild(inputtime);
                    // Append a line break 
                    container.appendChild(document.createTextNode("รหัสอาจารย์ "));
                    var inputid = document.createElement("input");
                    inputid.type = "text";
                    inputid.name = "member" + i;
                    container.appendChild(inputid);
                    container.appendChild(document.createElement("br"));
                }
                var x = document.createElement("BUTTON");
                var t = document.createTextNode("ยืนยัน");
                x.appendChild(t);
                container.appendChild(x);
            }
        </script>
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
                             <li><a href="OpenSection.jsp" style="text-decoration:none;">เปิดกลุ่มการเรียน</a><li>
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
            <h1>เปิดกลุ่มการเรียน </h1>
        </div>
        <div class="container" style="margin-left: 160px;">
            รหัสวิชา: <input type="text" name="subjectid" value="" /><br>
            จำนวนsection:<select id="member" name="member">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
            </select>
            <button onclick="addFields()">OK</button><br>
            <div id="demo"/>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery-3.2.0.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <%}%>
    </body>
</html>
