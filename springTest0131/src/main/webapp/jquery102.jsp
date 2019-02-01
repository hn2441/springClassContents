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
		$("a[title]").css("background","red");
		$("a[href^='http://mail']").css("background","green");
		$("a[href$='net']").css("background","lime");
		$("a[href*='google']").css("background","sky");
		$("a[href='http://www.nate.com']").css("background","orange");
		
	});
</script>
</head>
<body>
	<ul>
		<li><a href="http://www.naver.com" title="네이버로 가는 링크">네이버로</a></li>
		<li><a href="http://www.nate.com">네이트로</a></li>
		<li><a href="http://mail.daum.net">네이트로</a></li>
		<li><a href="http://www.daum.net">다음으로</a></li>
		<li><a href="http://www.google.com">구글로</a></li>
		<li><a href="http://www.facebook.com">페이스북으로</a></li>
		<li><a href="http://www.github.com">깃허브로</a></li>
	</ul>

</body>
</html>

