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
		//전체 올리는 페이지
		$("#b1").click(function() {
			$.ajax({
				url : "resources/json/MOCK_DATA.json",
				dataType : "json",
				success : function(result1) {
					$("#h2").text("json데이터 연결 성공1...")
					alert(result1.length);
					$(result1).each(function(index, person) {
						var id = person.id;
						var first_name = person.first_name;
						var last_name = person.last_name;
						var email = person.email;
						var gender = person.gender;
						var ip_address = person.ip_address;

						$("#id").val(id);
						$("#first_name").val(first_name);
						$("#last_name").val(last_name);
						$("#email").val(email);
						$("#gender").val(gender);
						$("#ip_address").val(ip_address);

						var d = $("form").serialize();
						$.ajax({
							url : "mockInsert",
							type : "POST",
							data : d,
							success : function(result11) {
								$("#p1").text("db 저장 성공")
								$("#d1").append("")

							}//ajax success
						})//inner ajax
					})//end each.function
				}//ajax success
			});//ajax
		});//click
		$("#b2").click(function() {
			var d = $("#select").serialize();
			$.ajax({
				url : "mockSelect",
				data : id,
				dataType : "text",
				success : function(result2) {
					$("h3").html(result2);
				} //success
			}); //ajax
		}); //click
		$("#b3").click(function() {
			var d = $("#selectAll").serialize();
			$.ajax({
				url : "mockSelectAll",
				dataType : "text",
				success : function(result3) {
					$("h3").html(result3);
				} //success
			});//ajax
		});//click
	});//ready
</script>
</head>
<body>
	<h3 id="h1"></h3>
	<div>
		<div id="d1">
			<button id="b1">insert all</button>
			<form id="f1">
				<input type="hidden" id="id" name="id" value=""> <input
					type="hidden" id="first_name" name="first_name" value=""> <input
					type="hidden" id="last_name" name="last_name" value=""> <input
					type="hidden" id="email" name="email" value=""> <input
					type="hidden" id="gender" name="gender" value=""> <input
					type="hidden" id="ip_address" name="ip_address" value="">
			</form>
			<p id="p1"></p>
		</div><br>
		<hr color="red" width="90%">
		<div id="d2">
			<input type="text" id="search" name="search">
			<button id="b2">select</button>
			<!-- 결과 담을 위치 -->
		</div><br>
		<div id="d3">
			<button id="b3">select all</button>
			<!-- 결과 담을 위치 -->
		</div><br>
	</div>

</body>
</html>