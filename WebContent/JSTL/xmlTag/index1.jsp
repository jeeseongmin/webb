<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
  
<html>  
<head>  
  <title>x:transform Tag</title>  
</head>  
<body>  
<h3>Novels Information:</h3>  
<c:set var="xmltext">  
 <books>  
<book>  
  <name>Three mistakes of my life</name>  
  <author>Chetan Bhagat</author>  
  <price>200</price>  
</book>  
<book>  
  <name>Tomorrow land</name>  
  <author>Brad Bird</author>  
  <price>1000</price>  
</book>  
<book>  
  <name>Wings of fire</name>  
  <author>Dr. APJ Abdul Kalam</author>  
  <price>500</price>  
</book>  
</books>  
</c:set>  
  
<c:import url="transfer1.xsl" var="xslt"/>  
<x:transform xml="${xmltext}" xslt="${xslt}">  
   <x:param name="bgColor" value="yellow"/>  
</x:transform>  
  
</body>  
</html>  