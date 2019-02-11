<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
제품리스트<br>
<c:forEach var="dto" items="${list}">
	${dto.pid} ${dto.pname} ${dto.price} ${dto.stock} <br>
</c:forEach>

<a href="/mvc0211_2/main.jsp">메인으로..</a>
</body>
</html>