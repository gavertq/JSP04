<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<%@include file="header.jsp" %>
	<div style="text-align: center; margin: 0 auto;">
	<h2>회원 가입</h2>
	<form action="register_Result.jsp">
		*아이디: <input type="text" placeholder="아이디" style="margin-left: 15px;" name="id"><br>
		*비밀번호: <input type="text" placeholder="비밀번호" name="pwd"><br>
		*이름: <input type="text" placeholder="이름" style="margin-left: 31px;" name="name"><br>
		&nbsp;주소: <input type="text" placeholder="주소" style="margin-left: 31px;" name="addr"><br>
		&nbsp;전화번호: <input type="text" placeholder="전화번호" name="tel"><br>
		<span style="color: blue; font-size: 6px; margin-right: 110px;">*(별표)는 필수 사항입니다</span>
		<br><br>
		<input type="submit" value="가입">
		<button type="button" onclick="location.href='main.jsp'">취소</button>	
	</form>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>