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
.topright {
  position: absolute;
  top: 58px;
  right: 16px;
  font-size: 18px;
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
String pass1=request.getParameter("pass1");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection(
		"jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");
String sql="select * from users where username = '"+uname+"' and pass = '"+pass1+"' ";
Statement pstmt=conn.createStatement();
ResultSet rs=pstmt.executeQuery(sql);
if(rs.next()) {%>
<ul>
  <li><a href="ep1.html">Home</a></li>
  <li><a href="aboutus.html">About</a></li>
  <li><a href="ProfileServlet">View Profile</a></li>
  <li><a href="questp.jsp">View questionpaper</a></li>
  <li style="flost:right"><a href="LogoutServlet">Logout</a></li>
  <li><a href="password.html">Change password</a></li>
</ul>
<div class=login>
	<% 
	Cookie un=new Cookie("un",uname);
	Cookie pw=new Cookie("pw",pass1);
	response.addCookie(un);
	response.addCookie(pw);
	out.println("Welcome " +uname);%>
	</div>
	<a class="button" href="questp.jsp">View Question paper</a>
	<div class=topright>
	<img src="image/klu_logo.jpg" style="width:130px;height:130px;"></a>
	</div>
	<% }
else {%>
<div class=login>
<h1 style="color:white">SORRY..</h1>
<h2 style="color:white">YOUR CREDENTIALS ARE INCORRET PLEASE PROVIE CORRECTLY...</h2>
<a href="loginuser.html">click here to login</a>
</div>
<%	
}
%>
</div>
</body>
</html>