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
		var clone3 = $("#p1").clone();
		clone3.attr("id","p3");
		$(clone3).insertBefore("#p9");
		$("#p3").text("나는 복사될 세번째");
		$("#p3").clone().insertBefore("#p1");
		$("#p2").insertAfter("#p9");
	});
	

</script>
</head>
<body>
	<p id="p1">내가 원래 첫 번째</p>	
	<p id="p2">내가 원래 두 번째</p>	
	<p id="p9">내가 원래 막내</p>	
		
</body>
</html>