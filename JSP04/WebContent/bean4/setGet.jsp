<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>setGet.jsp<br>
<jsp:useBean id="mb" class="members.MemberDTO"/>
id: <jsp:getProperty property="id" name="mb"/><br>
pwd: <jsp:getProperty property="pwd" name="mb"/><br>

<hr>
<!-- set -->
<jsp:setProperty property="id" name="mb"/> <!-- name이 id인 곳의 값을 받아 mb(==MemberDTO)의 id에 set -->
<jsp:setProperty property="pwd" name="mb"/> <!-- name이 pwd인 곳의 값을 받아 mb(==MemberDTO)의 pwd에 set -->

<!-- get -->
id: <jsp:getProperty property="id" name="mb"/><br>
pwd: <jsp:getProperty property="pwd" name="mb"/><br>
</body>
</html>