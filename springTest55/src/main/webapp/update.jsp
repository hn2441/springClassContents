<%@page import="com.itbank.test55.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
</head>
<body bgcolor="pink">
	<form action="update.do">
		아이디 : <input type="text" name="id" value="<%=request.getParameter("id")%>"><br> 
		패스워드 : <input type="text" name="pw" value="<%=request.getParameter("pw")%>"><br> 
		이름 : <input type="text" name="name" value="<%=request.getParameter("name")%>"><br> 
		전화번호 : <input type="text" name="tel" value="<%=request.getParameter("tel")%>"><br>
		<input type="submit" value="서버로 전송"> 
		<input type="reset" value="초기화">
	</form>
</body>
</html>