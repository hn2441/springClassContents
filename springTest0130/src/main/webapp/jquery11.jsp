<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><!--html에 버젼을 입력하지 않으면 5버젼이 디폴트로 설정되어있다  -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
var array = [100,200,300];

$(function() {
   alert(array);
   var arr = array.map(function(k,i) {//k가 배열의 값 i인덱스
      return k+50;
   })
   alert(arr);
   $("#p1").text(arr);
   
   
   var arr2 = array.map(function(k,i) {//k가 배열의 값 i인덱스
      return "<h1>" + k + "<h1>";
   })
   alert(arr2);
   $("#p2").html(arr2);
   
   $("#p3").text($("input").attr("value"));
   
   
   $("a").attr("title","안녕그대로걸어가");
   $("input").val($("a").attr("title"));
   console.log($("a").attr("title"));
   
   
   
   
});

</script>
</head>
<body>
<p id = "p1"></p>
<p id = "p2"></p>
<input type="text" name="name" id = "name" value="홍길동">

<p id = "p3"></p>
<a href = "jquery2.jsp">제이쿼리2페이지로</a>
</body>
</html>