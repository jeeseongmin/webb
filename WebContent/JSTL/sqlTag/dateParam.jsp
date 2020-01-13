<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ page import="java.util.Date,java.text.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
   
<html>  
<head>  
<title>sql:dateParam Tag</title>  
</head>  
<body>  
   
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/test?serverTimezone=UTC&characterEncoding=utf8"  
     user="root"  password="1234"/>  
  
<%  
Date DoB = new Date("2000/10/16");  
int studentId = 151;  
%>  
   
<sql:update dataSource="${db}" var="count">  
   UPDATE Student SET dob = ? WHERE Id = ?  
   <sql:dateParam value="<%=DoB%>" type="DATE" />  
   <sql:param value="<%=studentId%>" />  
</sql:update>  
   
<sql:query dataSource="${db}" var="rs">  
   SELECT * from Student;  
</sql:query>  
   
<table border="2" width="100%">  
<tr>  
   <th>Emp ID</th>  
   <th>First Name</th>  
   <th>Last Name</th>  
   <th>DoB</th>  
</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr>  
   <td><c:out value="${table.id}"/></td>  
   <td><c:out value="${table.First_Name}"/></td>  
   <td><c:out value="${table.Last_Name}"/></td>  
   <td><c:out value="${table.dob}"/></td>  
</tr>  
</c:forEach>  
</table>  
   
</body>  
</html>  