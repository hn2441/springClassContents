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
			/* 문제1 */
			$("#b1").click(function() {
				var d1 = $("#d1").html()
				$("#d1").html(d1+'<img id="img" alt="" src="resources/img/003.jpg"><br>');
			})
			/* 문제2 */
			$("#b2").click(function() {
				var d2 = $("#d2").html();
				$("#d2").html(d2+'<h3 id="h2"></h3><br>');
				if($("#i2").val()<30){
					$("#h2").text("괜찮아요");
				}else{
					$("#h2").text("더워요");
				}
			})
			/* 문제3 */11
			$("#b3").click(function() {
				var pw1 = $("#i31").val();
				var pw2 = $("#i32").val();
				if(pw1==pw2){
					$("#h3").text("일치").css("color","blue")
				}else{
					$("#h3").text("불일치").css("color","red")
				}
			})
			/* 문제4 */
			$("#b4").click(function() {
				var id = ['java','jsp','spring'];
				var num = 0;
				id.map(function(k,i) {
 					if($("#i4").val()==k){
						$("form").submit("ok.jsp");
					}	
				})
				alert("실패")
				e.preventDefault();
			})
			
			/* 문제5 */
			$("#i5").keyup(function() {
				var pw = $("#i5").val();
				
				if(pw == "success"){
					$("#p5").text("일치").css("color","blue");
				}else{
					$("#p5").text("불일치").css("color","red");
				}
			})
		});	
		
	
	</script>
</head>
<body>
	<div id="d1">
		문제1 : 버튼 눌렀을때 이미지가 나타나게!<br>
		<button id="b1">이미지 나타나게</button><br>
	</div>
	<div id="d2">
		문제2 : 현재 날씨를 입력받아서 30도 이상이면 더워요, 미만이면 괜찮아요 출력<br>
		<input type="number" id="i2">℃<br>
		<button id="b2">지금 온도 어때요?</button>
		<br>
	</div>
	<div id="d3">
		문제3 : 패스워드 2회 입력받고 아래에 동일한지 여부 확인해서 빨간색으로 띄워주기<br>
		pw1 <input type="text" id="i31"><br>
		pw2 <input type="text" id="i32"><br>
		<h4 id="h3"></h4>
		<button id="b3">비밀번호 확인!</button>
		<br>
		<br>
	</div>
	<div id="d4">
		문제4 : 아이디를 입력받아 java, jsp, spring중 하나인지 확인하여 맞으면 <br>
				ok.jsp로 넘김! ok.jsp에서는 id확인 메시지 띄워주기.<br>
		<form action="ok.jsp">
			아이디 : <input type="text" id="i4" name="id"><br>
			<button id="b4">아이디 확인</button>
		</form>
		<br>
	</div>
	<div id="d5">
		문제5 : 패스워드 success인지 실시간으로 체크하여 일치 / 불일치 띄워주기<br>
		비밀번호 : <input type="text" id="i5">
		<p id="p5"></p>
		<br>
		<br>
	</div>

</body>
</html>