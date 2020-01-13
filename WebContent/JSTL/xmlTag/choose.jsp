<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
  
<html>  
<head>  
  <title>x:choose Tag</title>  
</head>  
<body>  
<h3>Books Information:</h3>  
  
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
  <price>2000</price>  
</book>  
</books>  
</c:set>  
  
<x:parse xml="${xmltext}" var="output"/>  
<x:choose>  
   <x:when select="$output//book/author = 'Chetan bhagat'">  
      Book is written by Chetan bhagat  
   </x:when>  
   <x:when select="$output//book/author = 'Brad Bird'">  
      Book is written by Brad Bird  
   </x:when>  
   <x:otherwise>  
      The author is unknown...  
   </x:otherwise>  
</x:choose>  
  
</body>  
</html>  