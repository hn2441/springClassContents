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
		$("#p1").addClass("aqua");
		$("#p2").removeClss("green");
		$("#p3").toggleClass("red")
		
	});
	

</script>
<style type="text/css">
.aqua{	background-color: aqua;	}
.green{	background-color: green;	}
.red{	background-color: red;	}
</style>
</head>
<body>
	<p id="p1">내용1</p>
	<p id="p2">내용2</p>
	<p id="p3">내용3</p>
	<p id="p4">내용4</p>
	<p id="p5">내용5</p>
	<p id="p6">내용6</p>
	<p id="p7">내용7</p>
	
		
</body>
</html>