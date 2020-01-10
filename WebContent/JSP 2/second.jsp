<jsp:useBean id="u" class="org.sssit.User" scope="session"></jsp:useBean>  
Record:<br>  
<jsp:getProperty property="name" name="u"/><br>  
<jsp:getProperty property="password" name="u"/><br>  
<jsp:getProperty property="email" name="u" /><br>  