<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
	var array = [ 100, 200, 300 ]
	$(function() {
		$("#p1").text(array);
		alert(array);

		var result = array.map(function(k, i) {
			console.log(i + "위치 값은 : " + k + "야")
			console.log(k + 50)
			return "<h1>" + (k + 50) + "</h1><br>";
		})
		$("#p2").html(result);
		alert(result);
		/* 		var contents = $("body").text();
		 console.log(contents)
		 $("body").html(contents+"<br>"+$("#name").attr("value")); */

		$("a").attr("title", "제이쿼리 2로 이동하는 연결");
		$("input").val($("a").attr("title"));
		var title = $("a").attr("title");
		$("#name").attr("value", title);

	});
</script>
</head>
<body>
	<p id="p1"></p>
	<br>
	<p id="p2"></p>
	<br>
	<input type="text" id="name" name="name" value="홍길동">

	<a href="jquery2.jsp">제이쿼리 22</a>

</body>
</html>