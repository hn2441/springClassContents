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
/* 		var u1 = $("#u1").clone();
		$(u1).insertAfter("#u2"); */
		
		$("#u1").css("background", "yellow");
		$("#u2").css("background", "lime");
		
/* 		$("#f1").empty(); 	//자식을 삭제
		$("#f2").remove();	//자기 자신을 포함하여 삭제 */
		
/* 		$("#u1").remove();	//자기 자신을 포함하여 모두 삭제 */
		
		
	});
	

</script>
</head>
<body>
	<ul id="u1">
		<li id="f1">감자</li>
		<li>고구마</li>
		<li>양파</li>
	</ul>
	<ul id="u2">
		<li id="f2">피자</li>
		<li>햄버거</li>
		<li>라면</li>
	</ul>
		
</body>
</html>