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
			$(":text").css("border","3px dotted red");
			$(":checked").attr("checked","false");
			$(":selected").attr("selected","양파");
			$(":text").val("네가 최고야");
			alert($(":text").val())
			
		});
	</script>
</head>
<body>

<h1>탐색선택자</h1>
이름 : <input type="text" name="name"><br><br>
<input type="checkbox" name="check" checked="checked">
수신동의<br><br>
<select name="select">
	<option value="감자" selected="selected">감자
	<option value="고구마" selected="selected">고구마
	<option value="양파">양파
</select><br><br>
</body>

</html>