<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Test Page</title>
</head>
<body>
    <h1>Test Page Working!</h1>
    <p>Current time: <%= new java.util.Date() %></p>
    <p>Context Path: <%= request.getContextPath() %></p>
    <p>Server Info: <%= application.getServerInfo() %></p>
</body>
</html>

