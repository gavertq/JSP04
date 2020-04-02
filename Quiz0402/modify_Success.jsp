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
<jsp:setProperty property="*" name="dto"/>

	<%String id = (String)session.getAttribute("id");%>
	<jsp:setProperty property="id" name="dto" value="<%=id %>"/>
	<%boolean resultModi = dao.memberModi(dto);
	if(resultModi==true){%>
		<script>
		alert("변경 되었습니다");
		location.href="memberDetailInfo.jsp?id=<%=id%>";
		</script>
	<%}else{%>
		<script>
		alert("수정 실패");
		location.href='memberDetailInfo.jsp';
		</script>
	<%}	%>

</body>
</html>