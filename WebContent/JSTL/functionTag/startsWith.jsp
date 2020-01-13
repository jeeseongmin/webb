<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<html>  
<head>  
<title>Using JSTL Function</title>  
</head>  
<body>  
<c:set var="msg" value="The Example of JSTL fn:startsWith() Function"/>  
The string starts with "The": ${fn:startsWith(msg, 'The')}  
<br>The string starts with "Example": ${fn:startsWith(msg, 'Example')}  
</body>  
</html>  