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
					url:"resources/json/MOCK_DATA.json",
					dataType:"json",
					success: function(result){
						$("#h1").text("성공")
						var list = result
						$("#h2").text("리스트 크기:"+list.length)
						$(list).each(function(index,item) {
							console.log(index);
							var id = item.id;
							var fN = item.first_name;
							var email = item.email;
							console.log(id);
							console.log(fN);
							console.log(email);
							$("div").append("<h4>"+id+" "+fN+" "+email+"<h4>");
						})
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