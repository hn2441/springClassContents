<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#f2").insertBefore("#p1");
		$("#p1").empty();
		var clone = $("#f3").clone();
		clone.attr("id","f4")
		$(clone).insertBefore("h1");
		$("h2").insertAfter("h1");
	});
	

</script>
</head>
<body>
	<h1>나는 제목</h1>
	<input type="text" name="food1" id="f1" value="자장면">
	<p id="p1">나는 글자-1</p>	
	<input type="text" name="food2" id="f2" value="짬뽕">
	<p id="p2">나는 글자-2</p>	
	<input type="text" name="food2" id="f3" value="군만두">
	<h2>나는 제목222222</h2>
		
</body>
</html>