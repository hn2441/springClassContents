<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script src="resources/js/jquery.min.js"></script>
	<script type="text/javascript">
/* 		var array=["감자", "고구마", "양파"];
		$(function(){
			alert(array);
			var result = array.map(function(k,i) {
				return k+i;
			})
			alert(result);
		}); */
		
		var array=["자바", "jsp", "스프링", "안드로이드"];
		$(function(){
			alert(array);
			var result = array.map(function(k,i) {
				return k+(100+i);
			})
			alert(result);
		});
		
	</script>
</head>
<body>

</body>

</html>