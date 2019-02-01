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
			/* $("li").text("나로 다 바뀌어요.."); */
			$("li").each(function(i,k){
				$(k).text("내가 하나씩 - "+i);
				console.log("내가 하나씩 - "+i);
				alert(i+" - 끝")
			});
			
		});
	</script>
</head>
<body>

	<div id="d1">
		<ul>
			<li>내가 01번</li>
			<li>내가 02번</li>
			<li>내가 03번</li>
			<li>내가 04번</li>
			<li>내가 05번</li>
		</ul>
	</div>
	<div id="d2">
		<ul>
			<li>내가 06번</li>
			<li>내가 07번</li>
			<li>내가 08번</li>
			<li>내가 09번</li>
			<li>내가 10번</li>
		</ul>
	</div>
</body>

</html>