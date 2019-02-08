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
			$("#b1").click(function() {
				var site = "http://myhome.chosun.com/rss/www_section_rss.xml"
				$.ajax({
					url:"https://api.rss2json.com/v1/api.json?rss_url=http%3A%2F%2Fmyhome.chosun.com%2Frss%2Fwww_section_rss.xml&api_key=t7v4mko2hb172txjyyocvxoljkmpifqarrfdgari",
					dataType:"json",
					data:{
						rss_url:site,
						api_key:"t7v4mko2hb172txjyyocvxoljkmpifqarrfdgari",
						count:10
						},
					success: function(result1){
						$("#h1").text("외부 API이용해서 사이트 연결 성공1...")
						console.log(result1.items); //array(10)
						$("#d1").html("<ui></ui>")
						for (var i = 0; i < 10; i++) {
							var title = result1.items[i].title;
							var link = result1.items[i].link;
							$("ui").append("<li><a href="+link+">"+title+"</a></li>");
						};
						/* 
						//in ==> 하나씩 가지고 온다.(java, python, R ...)
						for (var i in result.items) {
						} */	
					}//end function
				});//ajax
			});//click
			$("#b2").click(function() {
				var site = "http://www.chosun.com/site/data/rss/ent.xml"
				$.ajax({
					url:"https://api.rss2json.com/v1/api.json?rss_url=http%3A%2F%2Fwww.chosun.com%2Fsite%2Fdata%2Frss%2Fent.xml&api_key=t7v4mko2hb172txjyyocvxoljkmpifqarrfdgari",
					dataType:"json",
					data:{
						rss_url:site,
						api_key:"t7v4mko2hb172txjyyocvxoljkmpifqarrfdgari",
						count:10
						},
					success: function(result2){
						$("#h2").text("외부 API이용해서 사이트 연결 성공2...")
						console.log(result2.items); //array(10)
						for (var i = 0; i < 10; i++) {
							var title = result2.items[i].title;
							var link = result2.items[i].link;
							var thumbnail = result2.items[i].thumbnail;
							console.log("title / link / thumbnail 변수에 담기")
							$("#title").val(title);
							$("#link").val(link);
							$("#thumbnail").val(thumbnail);
							console.log("value값 넣기")
							
							var inputData = $("#f2").serialize();
							console.log("serialize")
							$.ajax({
								url:"newsInsert",
								type:"POST", 
								data:inputData,
								dataType:"text",
								success: function(result22){
									$("#d2").append("<h3>inner ajax성공</h3>")
								}
							})//inner ajax
							console.log("end inner ajax")
						};//for
					}//end function
				});//ajax
			});//click
			$("#b3").click(function() {
				var site = "http://photo.chosun.com/site/data/rss/rss.xml"
				$.ajax({
					url:"https://api.rss2json.com/v1/api.json?rss_url=http%3A%2F%2Fphoto.chosun.com%2Fsite%2Fdata%2Frss%2Frss.xml&api_key=t7v4mko2hb172txjyyocvxoljkmpifqarrfdgari",
					dataType:"json",
					data:{
						rss_url:site,
						api_key:"t7v4mko2hb172txjyyocvxoljkmpifqarrfdgari",
						count:10
						},
					success: function(result2){
						$("#h2").text("외부 API이용해서 사이트 연결 성공3...")
						console.log(result2.items); //array(10)
						$("div").html("<ul></ul>")
						/* for (var i = 0; i < 10; i++) {
							var title = result2.items[i].title;
							var link = result2.items[i].link;
							var thumbnail = result2.items[i].thumbnail; 
							$("ul").append("<li><img width=50 height=50 src="+
									thumbnail+"><a href="+link+">"+title+"</a></li>");
						}; */
					}//end function
				});//ajax
			});//click
		});//ready
	</script>
</head>
<body>
	<button id="b1">오늘의 주요뉴스</button>
	<button id="b2">오늘의 연예뉴스</button>
	<button id="b3">오늘의 포토뉴스</button>
	<h3 id="h1"></h3>
	<div>
		<div id="d1">
		</div>
		<div id="d2">
			<form id="f2">
				<input type='text' id='title' name='title' value=''><br>
				<input type='text' id='link' name='link' value=''><br>
				<input type='text' id='thumbnail' name='thumbnail' value=''>
			</form>
		</div>
		<div id="d3">
		</div>
	</div>

</body>
</html>