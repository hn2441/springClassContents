<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
	</script>
	<script src="resources/js/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#p6").text($("#p1").text()).css("color","red")
			console.log("형님 : "+$("#p2").prev().text())/* p2전 */
			console.log("아우 : "+$("#p2").next().text())/* p2후 */
			
			$("#p2").siblings().css("color","green")
			
			$("#d1").css("border","1px solid red")
			$("#d1").children("ul").css("background","pink")
			
		});
	</script>
</head>
<body>
	<p id="p1">내용1</p>
	<p id="p2">내용2</p>
	<p id="p3">내용3</p>
	<p id="p4">내용4</p>
	<p id="p5">내용5</p>
	<p id="p6">내용6</p>
	<div id="d1">
		<ul>
			<li>아이스크림</li>
			<li>아이스티</li>
		</ul>
		<ul>
			<li>핫초코</li>
			<li>샤브샤브</li>
		</ul>
	</div>
	
</body>
</html>