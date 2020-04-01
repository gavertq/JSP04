<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>setGet.jsp<br>
<jsp:useBean id="mb" class="members.MemberDTO"/> <!-- useBean이 아니라 일반 객체 만들듯이 쓰면 아래의 방법처럼 태그를 통해 set,get을 부를 수 없음 -->
id: <jsp:getProperty property="id" name="mb"/><br>
pwd: <jsp:getProperty property="pwd" name="mb"/><br>

<hr>
<!-- set -->
<jsp:setProperty property="id" name="mb"/> <!-- name이 id인 곳의 값을 받아 mb(==MemberDTO)의 id에 set -->
<jsp:setProperty property="pwd" name="mb"/> <!-- name이 pwd인 곳의 값을 받아 mb(==MemberDTO)의 pwd에 set -->

<!-- get -->
id: <jsp:getProperty property="id" name="mb"/><br> <!-- mb(==MemberDTO)에서 id에 저장된 값을 get -->
pwd: <jsp:getProperty property="pwd" name="mb"/><br> <!-- mb(==MemberDTO)에서 pwd에 저장된 값을 get -->

<!-- setproperty는 많이 써도 get은 그러지 않음. < % = 를 통해 getID()하는게 더 편하기 때문 -->
</body>
</html>