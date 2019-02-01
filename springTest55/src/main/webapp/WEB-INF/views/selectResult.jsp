<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	검색! 결과<br>
	${dto.id }<br>
	${dto.pw }<br>
	${dto.name }<br>
	${dto.tel }<br>
	<br>
	<a href="/test55/home.jsp">home</a><br>
	<a href="/test55/update.jsp?id=${dto.id}&pw=${dto.pw}&name=${dto.name}&tel=${dto.tel}">update</a><br>
	<a href="/test55/delete.jsp?id=${dto.id}">delete</a><br>
</body>
</html>