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
	<%MemberDTO m = new MemberDTO(); 
	String modiId = m.getId();
	String modiName = request.getParameter("modiName");
	String modiAddr = request.getParameter("modiAddr");
	String modiTel = request.getParameter("modiTel");
	
	boolean resultModi = dao.memberModi(modiId, modiName, modiAddr, modiTel);
	if(resultModi==true){%>
		<script>
		alert("변경 되었습니다");
		location.href='memberDetailInfo.jsp?id=<%=modiId%>';
		</script>
	<%}else{%>
		<script>
		alert("수정 실패");
		location.href='memberDetailInfo.jsp';
		</script>
	<%}	%>

</body>
</html>