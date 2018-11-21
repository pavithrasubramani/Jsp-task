<%@page import="com.scratch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

scratch s=(scratch)request.getAttribute("sc");
%>

 
<table border="1" cellpadding="5">
            <caption><h2>List of users</h2></caption>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Description</th>
                <th>UserId</th>
            </tr>
            
            <tr>
                    <td><%= s.getId() %></td>
                    <td><%= s.getTitle() %></td>
                    <td><%= s.getDescription() %></td>
                    <td><%= s.getUserid() %></td>
                </tr>
           
        </table>
        

</body>
</html>