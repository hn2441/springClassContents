<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>완료 페이지</title>
</head>
<body>
회원가입 완료!<br>
<hr>
아이디 : ${memberDTO.id}<br>
비밀번호 : ${memberDTO.pw}<br>
이름 : ${memberDTO.name}<br>
연락처 : ${memberDTO.tel}<br>
</body>
</html>