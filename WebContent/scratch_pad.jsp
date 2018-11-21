<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/scratchservlet" method="post">
<div>ID<input type="text" id="id" name="id" ></div>
<div>TITLE<input type="text" id="title" name="title"></div>
<div>DESCRIPTION<textarea rows="5" cols="30" id="desc" name="desc"></textarea></div>
<div>USER ID<input type="text" id="userid" name="userid"></div>
<div><input type="submit" value="SUBMIT"></div>
</form>
</body>
</html>