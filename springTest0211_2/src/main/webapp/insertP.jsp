<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<form action="insertProduct.do">
		제품id: <input type="text" name="pid"><br>
		제품명 : <input type="text" name="pname"><br>
		가격 : <input type="number" name="price"><br>
		수량 : <input type="number" name="stock"><br>
		<input type="submit" value="등록">
	</form>
</body>
</html>