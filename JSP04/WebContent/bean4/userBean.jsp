<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>uesBean.jsp<br>

<jsp:useBean id="mb" class="members.MemberDTO"></jsp:useBean>
<b>자바 빈 객제 생성 후 저장된 정보 출력</b><br>
id: <%=mb.getId() %><br>
pwd: <%=mb.getPwd() %><br>
<hr>

<% mb.setId("test"); mb.setPwd("1234"); %>
<b>데이터 저장 후 정보 출력</b><br>
id: <%=mb.getId() %><br>
pwd: <%=mb.getPwd() %><br>
<hr>

</body>
</html>