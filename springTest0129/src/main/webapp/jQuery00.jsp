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
			$("h1").css("border","1px solid blue")
			$("#title").css("color", "red")
			$(".content").css("background","yellow")
		});
	</script>
</head>
<body>
	<h1 class="content">제이쿼리</h1>
	<h2 id="title" class="content">직접선택자</h2>
	
</body>
</html>