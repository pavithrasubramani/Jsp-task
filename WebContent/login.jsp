<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Login</h1>
<form name="registrationForm" class="form-horizontal"
            action="${pageContext.request.contextPath}/user/authenticate" method="post">
<div class="form-group">
 <label class="col-md-2 custom-control-label">Email: </label><div class="col-md-4">
<input type="email" placeholder="Enter your email" class="form-control" name="emailId"
                           required="required"/>
 </div></div>
 
 <div class="form-group">
 <label class="col-md-2 custom-control-label">Password: </label>
 <div class="col-md-4"><input type="password" placeholder="Enter your password" class="form-control" name="password"
                           required="required"/>
</div></div>



<div class="form-group">
 <div class="col-md-4 col-md-offset-2">
 <input type="submit" title="Click here to Log In" name="loginBTN" value="Log In"
                           class="btn btn-primary">
</div></div>
</body>
</html>