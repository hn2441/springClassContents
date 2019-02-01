<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" src="resources/js/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#b1").click(function(){
				alert("버튼1");
				$("form").attr("action","result.jsp");
			})
			$("#b2").click(function(){
				alert("버튼2")
				$("form").attr("action","result.do");
			})
		});
	</script>
</head>
<body>
	<form action="">
	<input type="text" name="id" id="id"><br>
	<input type="text" name="pw" id="pw"><br>
	<button id="b1">버튼 1</button>
	<button id="b2">버튼 2</button>
	</form>
</body>
</html>