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
			var h1Text = $("h1").text();
			console.log(h1Text);
			$("li:eq(1)").text("아이스초코").css("font-size","30px");
			$("li:eq(0)").text($("h1").text());
			$("li:eq(2)").text("초콜릿");
			$("img").attr("src","resources/img/002.jpg");
			
			alert($("a[href='me.jsp']").text());
			alert($("a[href='you.jsp']").text());
			
			alert($("img").attr("src"));
			$("img").attr("width","500px");
		});
	</script>
</head>
<body>
	<img src="resources/img/001.jpg" width="300px"><br>
	<a href="me.jsp">나를 누르세요</a><br>
	<a href="you.jsp">너를 누르세요</a><br>
	<h1>우리집 냉장고</h1>
	<ul>
		<li>감자</li>
		<li>고구마</li>
		<li>양파</li>
	</ul>
	
</body>
</html>