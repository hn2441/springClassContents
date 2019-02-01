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
			$("#d1").css("border","1px solid purple")
			$("#d1").children("ul").css("background","pink")
			$("#d1 ul:first").css("border","2px double red")
			$("#d1 ul:last").css("border","2px double blue")
			$("#d1 ul:even").css("background","pink")
			$("#d1 ul:odd").css("background","yellow")
			
			$("li:eq(3)").css("font-size","10px")
			$("li:lt(3)").css("font-size","40px")
			$("li:gt(3)").css("font-size","15px")
			
		});
	</script>
</head>
<body>

	<div id="d1">
		<ul>
			<li>아이스크림</li>
			<li>아이스티</li>
		</ul>
		<ul>
			<li>핫초코</li>
			<li>샤브샤브</li>
		</ul>
		<ul>
			<li>샌드위치</li>
			<li>케이크</li>
		</ul>
		<ul>
			<li>양꼬치</li>
			<li>칭따오</li>
		</ul>
	</div>
	
</body>
</html>