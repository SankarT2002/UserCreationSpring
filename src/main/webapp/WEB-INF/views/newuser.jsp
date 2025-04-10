<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New User</title>
</head>
<body>
<h1>New User</h1>

<form action="save" method="post">

        <label>Full Name:</label>
        <input type="text" name="name" required><br><br>

        <label>Email:</label>
        <input type="email" name="email" required><br><br>

        <input type="submit" value="Submit" >
        
        </form>
</body>
</html>