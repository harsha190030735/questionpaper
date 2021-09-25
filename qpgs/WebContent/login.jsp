<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.login{  
        width: 180px;  
        padding: 20px;  
        background: #262626;  
        color:white; 
        font-size: 150%;
        position: absolute;
        top: 50px;
        left: 16px;
        font-size: 18px;
}  
.login2{  
        width: 380px;  
        padding: 20px;  
        background: #262626;  
        color:white; 
        font-size: 150%;
        position: absolute;
        top: 150px;
        left: 550px;
        font-size: 18px;
}  
.topleft {
  position: absolute;
  top: 140px;
  left: 156px;
}
.topleft2 {
  position: absolute;
  top: 417px;
  left: 146px;
}
.topleft3 {
position: absolute;
  top: 80px;
  left: 450px;
}
 .button {
        display: inline-block;
        padding: 50px ;
        text-align: center;
        text-decoration: none;
        color: #ffffff;
        background-color: #7aa8b7;
        border-radius: 6px;
        outline: none;
        position: absolute;
        top: 200px;
        left: 16px;
        font-size:200%;
      }
      .button2 {
        display: inline-block;
        padding: 50px ;
        text-align: center;
        text-decoration: none;
        color: black;
        background-color:#ffa31a;
        border-radius: 6px;
        outline: none;
        position: absolute;
        top: 500px;
        left: 16px;
        font-size:200%;
      }
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color:#262626;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 10px 10px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color:#737373;
}

.active {
  background-color:#737373;
}
</style>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection(
		"jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");
String sql="select * from userlogin where username = ? and pass = ?";
//set values for question mark ?

PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setString(1, uname);
pstmt.setString(2, pass);

ResultSet rs=pstmt.executeQuery();
if(rs.next()) {%>
<ul>
  <li><a href="ep1.html">Home</a></li>
  <li><a href="ProfileServlet">View Profile</a></li>
  <li><a href="LogoutServlet">Logout</a></li>
  <li><a href="password.html">Change password</a></li>
</ul>
	<div class=login>
	<% 
	Cookie un=new Cookie("un",uname);
	Cookie pw=new Cookie("pw",pass);
	response.addCookie(un);
	response.addCookie(pw);
	out.println("Welcome " +uname);%>
	</div>
	<div class=topleft>
	<img src="image/generate.jpg" style="width:130px;height:70px;"></a>
	</div>
	<a class="button" href="AddQuestion.jsp">Generate Midterm Paper</a>
	<div class=topleft2>
	<img src="image/generate3.jpg" style="width:150px;height:90px;"></a>
	</div>
	<a class="button2" href="generate.jsp">Generate Sem-in Papers</a>
<% }
else {%>
<ul>
  <li><a href="ep1.html">Home</a></li>
  <li><a href="aboutus.html">About</a></li>
  <li><a href="password.html">Change password</a></li>
</ul>
<div class=login2>
<div class=topleft3>
	<img src="image/sorry.png" style="width:150px;height:200px;"></a>
	</div>
<h1 style="color:white">SORRY....!</h1>
<h2 style="color:white">YOUR CREDENTIALS ARE INCORRECT PLEASE PROVIDE CORRECTLY...!</h2>
<a href="index.html" style="color:white">click here to login</a>
</div>
<%	
}
%>
</div>
</body>
</html>