<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	selectAll<br>
	
	<c:forEach var="dto" items="${list}">
		${dto.id} &nbsp;&nbsp; ${dto.pw} &nbsp;&nbsp; ${dto.name} &nbsp;&nbsp; ${dto.tel} <br>
	</c:forEach>
	<br>
	<br>
	<a href="/test55/home.jsp">home</a>
</body>
</html>