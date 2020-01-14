<%@ page import="com.oreilly.servlet.MultipartRequest" %>  
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%  
MultipartRequest m = new MultipartRequest(request, "C:\\Users\\wltjd\\Desktop\\testUpload");  

Enumeration files = m.getFileNames();
String file1 = (String) files.nextElement();  
String filename = m.getFilesystemName(file1);
String uploadImg = "C:\\Users\\wltjd\\Desktop\\testUpload\\"+filename;
%>  
<body>
<h1>successfully uploaded</h1>
<br>
<img src="<%=uploadImg%>" alt="uploaded Image"></img>
  </body>
