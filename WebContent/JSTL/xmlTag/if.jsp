<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
<html>  
<head>  
  <title>x:if Tags</title>  
</head>  
<body>  
<h2>Vegetable Information:</h2>  
<c:set var="vegetables">  
<vegetables>  
    <vegetable>  
      <name>onion</name>  
      <price>40</price>  
    </vegetable>  
 <vegetable>  
      <name>Potato</name>  
      <price>30</price>  
    </vegetable>  
 <vegetable>  
      <name>Tomato</name>  
      <price>90</price>  
    </vegetable>  
</vegetables>  
</c:set>  
<x:parse xml="${vegetables}" var="output"/>  
<x:if select="$output/vegetables/vegetable/price < 100">  
   Vegetables prices are very low.  
</x:if>  
</body>  
</html>  