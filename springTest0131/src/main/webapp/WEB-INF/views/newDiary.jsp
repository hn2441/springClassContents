<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	newDiary<br>
	${list.get(0)}의 일기<br>
	<hr color="red">
	오늘의 제목 : ${list.get(1) }<br>
	오늘의 제목 : ${list.get(2) }<br>

</body>
</html>