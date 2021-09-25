<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.center {
  margin-left: auto;
  margin-right: auto;
}
</style>

<body>

			
<%@page import="java.sql.*,java.util.*"%>


<table border="5" class="center">
<tr style="background-color:yellow;">
<td>Question_no</td>
<td>Question</td>
<td>Option-a</td>
<td>Option-b</td>
<td>Option-c</td>
<td>Option-d</td>
</tr>
<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
java.sql.Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");
Statement st= con.createStatement();
String sql ="select * from sem1";
ResultSet rs = st.executeQuery(sql);
int i=1; 
while(rs.next()){
%>
<tr>

<td><% out.print(i++); %></td>
<td><%=rs.getString("q1") %></td>
<td><%=rs.getString("c11") %></td>
<td><%=rs.getString("c12") %></td>
<td><%=rs.getString("c13") %></td>
<td><%=rs.getString("c14") %></td>
<tr></tr>
<td><% out.print(i++); %></td>
<td><%=rs.getString("q2") %></td>
<td><%=rs.getString("c21") %></td>
<td><%=rs.getString("c22") %></td>
<td><%=rs.getString("c23") %></td>
<td><%=rs.getString("c24") %></td>
<tr></tr>
<td><% out.print(i++); %></td>
<td><%=rs.getString("q3") %></td>
<td><%=rs.getString("c31") %></td>
<td><%=rs.getString("c32") %></td>
<td><%=rs.getString("c33") %></td>
<td><%=rs.getString("c34") %></td>
<tr></tr>
<td><% out.print(i++); %></td>
<td><%=rs.getString("q4") %></td>
<td><%=rs.getString("c41") %></td>
<td><%=rs.getString("c42") %></td>
<td><%=rs.getString("c43") %></td>
<td><%=rs.getString("c44") %></td>
</tr>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

</body>
</html>