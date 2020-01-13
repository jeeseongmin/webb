<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
<html>  
<head>  
  <title>x:transform Tag</title>  
</head>  
</html>  
<c:import var="xml" url="transfer.xml" />  
<c:import var="xsl" url="transfer.xsl" />  
<x:transform xml="${xml}" xslt="${xsl}" />  