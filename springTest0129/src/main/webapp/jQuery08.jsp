<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script src="resources/js/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$("h1").text("이미지가 커졌어요!");
			$("#new").attr("src",$("#ori").attr("src"));
			var newSize = parseInt($("#ori").attr("width").split("px")[0])*2;
			$("#new").attr("width",newSize);
			$("body").append("<br>추가?");

		});

		
	</script>
</head>
<body>
	<h1></h1>
	<img id="ori" src="resources/img/002.jpg" width=300px>
	<hr>
	<img id="new" src="" width=0px>
</body>

</html>