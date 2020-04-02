<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<jsp:useBean id="dao" class="members.MemberDAO"/>
<jsp:useBean id="dto" class="members.MemberDTO"/>
<jsp:setProperty property="name" name="dto"/>
<jsp:setProperty property="addr" name="dto"/>
<jsp:setProperty property="tel" name="dto"/>
	<%
	String MId = request.getParameter("id");
	boolean resultModi = dao.memberModi(dto, MId);
	if(resultModi==true){%>
		<script>
		alert("변경 되었습니다");
		location.href="memberDetailInfo.jsp?id='<%=MId%>'";
		</script>
	<%}else{%>
		<script>
		alert("수정 실패");
		location.href='memberDetailInfo.jsp';
		</script>
	<%}	%>

</body>
</html>