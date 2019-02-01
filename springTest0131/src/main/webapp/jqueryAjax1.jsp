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
		$("#form").submit(function() {
			var d = $(this).serialize(); /* 재가공 */
			$.ajax({
				url:"member.jsp",
				type:"post",
				data:d,
				success: function(result) {
					$("h1").text(result);	
				}
			});
			return false;
		});
		
	});
</script>
</head>
<body>
	<form id="form">
		이름 : <input type="text" id="user_name" name="user_name" value="choi">
		<input type="submit" value="ajax통신">
	</form>
	<hr color="red">
	<h1></h1>
</body>
</html>