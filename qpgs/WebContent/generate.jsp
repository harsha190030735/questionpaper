<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table, th, td {
  border: 2px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 10px;
  text-align: left;    
}
center {
  margin: 0;
  position: absolute;
  top: 40%;
  left: 50%;
}
</style>
<body>
<form method="post" action="addquestionservlet">
<a href="login.jsp">click here to home page</a>
<table style="width:100%">
  <tr>
    <th>Question 1</th>
    <td><input type="text" size="200" name="q1" id="q1"></td>
  </tr>
  <tr>
    <th rowspan="4">options</th>
    <td><input type="text" size="50" name="c11" id="c11"></td>
  </tr>
  <tr>
    <td><input type="text" size="50" name="c12" id="c12"></td>
  </tr>
  <tr>
    <td><input type="text" size="50" name="c13" id="c13"></td>
  </tr>
  <tr>
    <td><input type="text" size="50" name="c14" id="c14"></td>
  </tr>
</table>
<table style="width:100%">
  <tr>
    <th>Question 2</th>
    <td><input type="text" size="200" name="q2" id="q2"></td>
  </tr>
  <tr>
    <th rowspan="4">options</th>
    <td><input type="text" size="50" name="c21" id="c21"></td>
  </tr>
  <tr>
    <td><input type="text" size="50" name="c22" id="c22"></td>
  </tr>
  <tr>
    <td><input type="text" size="50" name="c23" id="c23"></td>
  </tr>
  <tr>
    <td><input type="text" size="50" name="c24" id="c24"></td>
  </tr>
</table>
<table style="width:100%">
  <tr>
    <th>Question 3</th>
    <td><input type="text" size="200" name="q3" id="q3"></td>
  </tr>
  <tr>
    <th rowspan="4">options</th>
    <td><input type="text" size="50" name="c31" id="c31"></td>
  </tr>
  <tr>
    <td><input type="text" size="50" name="c32" id="c32"></td>
  </tr>
  <tr>
    <td><input type="text" size="50" name="c33" id="c33"></td>
  </tr>
  <tr>
    <td><input type="text" size="50" name="c34" id="c34"></td>
  </tr>
</table>
<table style="width:100%">
  <tr>
    <th>Question 4</th>
    <td><input type="text" size="200" name="q4" id="q4"></td>
  </tr>
  <tr>
    <th rowspan="4">options</th>
    <td><input type="text" size="50" name="c41" id="c41"></td>
  </tr>
  <tr>
    <td><input type="text" size="50" name="c42" id="c42"></td>
  </tr>
  <tr>
    <td><input type="text" size="50" name="c43" id="c43"></td>
  </tr>
  <tr>
    <td><input type="text" size="50" name="c44" id="c44"></td>
  </tr>
</table>
  <input type="submit" value="add"/>  
  </form>   
</body>
</html>