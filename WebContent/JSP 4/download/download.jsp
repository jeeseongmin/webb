<%@ page isELIgnored="false" contentType = "text/html; charset=UTF-8" %>
<%    
  String filename = "home.jsp";   
  String filepath = "c:\\Users\\wltjd\\desktop\\";
  response.setContentType("APPLICATION/OCTET-STREAM");   
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
  
  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
            
  int i;   
  while ((i=fileInputStream.read()) != -1) {  
    out.write(i);   
  }   
  fileInputStream.close();   
%>   