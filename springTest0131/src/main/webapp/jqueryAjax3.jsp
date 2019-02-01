<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- mvc2 로그인, -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#userN").keyup(function() {
			var id = $("#userN").val();
			if (id.length < 5) {
				$("#hId").text("5글자이상").css("color", "red");
			}else{
				$("#hId").text("5글자이상").css("color", "green");
			}
		})

		$("#userPC").keyup(function() {
			var pw = $("#userP").val();
			var pwc = $("#userPC").val();
			if (pw == pwc) {
				$("#hPw").text("일치").css("color", "blue");
			} else {
				$("#hPw").text("불일치").css("color", "red");
			}
		})

		$("#form").submit(function() {
			var d = $(this).serialize(); /* 재가공 */
			$.ajax({
				url : "idCheck",
				type : "post",
				data : d,
				success : function(result) {
					$("#hId").text(result).css("color","blue");
				}
			});
			return false;
		});

	});
</script>
</head>
<body>
	<form action="idCheck" id="form">
		아이디 : <input type="text" id="userN" name="userN"><br>
		<h3 id="hId"></h3>
		<br> 비밀번호 : <input type="text" id="userP" name="userP"><br>
		확인 : <input type="text" id="userPC" name="userPC"><br>
		<h3 id="hPw"></h3>
		<br> <input type="submit" value="ajax통신">
	</form>
</body>
</html>