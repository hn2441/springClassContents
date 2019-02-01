<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
	</script>
	<script src="resources/js/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
			var h1Text = $("h1").text();
			console.log(h1Text);
		});
	</script>
</head>
<body>
	<img src="resources/img/001.jpg"><br>
	<a href="me.jsp">나를 누르세요</a><br>
	<a href="you.jsp">너를 누르세요</a><br>
	<h1>우리집 냉장고</h1>
	<ul>
		<li>고기</li>
		<li>김치</li>
		<li>계란</li>
	</ul>
	
</body>
</html>