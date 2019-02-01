<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#input").load("resources/txt/diary.txt");
		
		$("#b1").click(function() {
			$("#form").attr("action","diary")
		})
		$("#b2").click(function() {
			$("#form").attr("action","newDiary")
		})
	});
</script>
</head>
<body>
	<div id="input">
	</div>
	<form action="diary" id="form">
		날짜 : <input type="text" name="date"><br>
		제목 : <input type="text" name="title"><br>
		내용 : <input type="text" name="content" id="content"><br>
		<button id="b1" type="submit">일기 서버1로 전송</button>
		<button id="b2" type="submit">일기 서버2로 전송</button>
	</form>
</body>
</html>