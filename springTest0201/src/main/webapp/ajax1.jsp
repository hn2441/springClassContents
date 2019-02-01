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
			$("button").click(function() {
				$.ajax({
					url:"resources/xml/input.xml",
					dataType:"xml",
					success: function(result){
						$("#h1").text("성공")
						var list = $(result).find("rank");
						$("#h2").text("리스트 크기:"+list.length)
						
						$(list).each(function(){
							var name = $(this).find("name").text();
							var tel = $(this).find("tel").text();
							
							$("div").append("<h4>"+name + "," + tel+"<h4>");

						}) //each
					}//function
				});//ajax
			});//click
		});//ready
	</script>
</head>
<body>
	<button>버튼</button>
	<h3 id="h1"></h3>
	<h3 id="h2"></h3>
	<h3 id="h3"></h3>
	<div>
	</div>

</body>
</html>