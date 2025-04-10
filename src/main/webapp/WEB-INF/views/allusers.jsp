<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="com.project.batch.model.User" %>
	<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Users List</title>
</head>
<body>
	<h1>All Users</h1>
	<hr>
	<div>
		<table border="1">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>E-Mail</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
			<%
			List<User> users=(List <User>) request.getAttribute("userlist");
			
			if(users ==null || users.isEmpty()){
			%>
				<tr ><td colspan="3">No user found!!!!</td></tr>
				<% 
			}else{
				
		     for(User user : users) {
		     %>
				<tr>
					<td><%= user.getId() %></td>
					<td><%= user.getName() %></td>
					<td><%= user.getEmail() %></td>
					<td><a href="/update/<%= user.getId()%>">Update</a> | <a href="/delete/<%= user.getId()%>">Delete</a></td> 

				</tr>
				<%
				}
			}
				%>
			</tbody>
		</table>
		<br><hr>
		<a href="adduser"><button>Add User</button></a>
	</div>
</body>
</html>