<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="registrationForm" class="form-horizontal" action="registerUser.jsp" method="post">
            <div class="form-group">
                <label class="col-md-2 custom-control-label">User Name: </label>
                <div class="col-md-4">
                    <input type="text" class="form-control" name="userName" required="required"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 custom-control-label">Email: </label>
                <div class="col-md-4">
                    <input type="email" class="form-control" name="emailId" required="required"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 custom-control-label">Password: </label>
                <div class="col-md-4">
                    <input type="password" class="form-control" name="password" required="required"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-4 col-md-offset-2">
                    <input type="submit" name="registerBTN" value="Register" class="btn btn-primary">
                </div>
            </div>
        </form>
</body>
</html>