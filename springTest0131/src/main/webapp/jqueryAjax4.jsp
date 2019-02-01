<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- mvc1 댓글, -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#form").on("submit",function(){
			var d = $(this).serialize();
			
			$.ajax({
				url: "comment.jsp",
				type: "post",
				data: d,
				success: function(result){
					$("#div1").append(result);
				}
			})
			return false;
		})
	})
</script>
</head>
<body>
	<form action="comment.jsp" id="form" name="form" method="post">
		<img src="resources/img/004.jpg" width="300"><br>
		<textarea rows="10" cols="50" name="content"></textarea>
		<br> <input type="submit" value="등록">
	</form>
	<hr>
	<h4>댓글</h4>
	<hr>
	<div id="div1"></div>
</body>
</html>