<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.project.batch.model.User" %>

<%User user=(User) request.getAttribute("updateuser"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update your Details here</title>
</head>
<body>
<h1>Update!!!</h1>

<form action="/save" method="post">


		<input type="hidden" name="id" value=<%= user.getId() %>>
        <label>Full Name:</label>
        <input type="text" name="name" value="<%=user.getName() %>" ><br><br>

        <label>Email:</label>
        <input type="email" name="email" value="<%=user.getEmail() %>"><br><br>

        <input type="submit" value="update" >
        
        </form>
</body>
</html>