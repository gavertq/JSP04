<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.div_memberDetail{text-align: center; align-items: center;}
table{margin: 0 auto;}
</style>

</head>
<body>
<jsp:useBean id="dao" class="members.MemberDAO"/>

	<%MemberDTO m = new MemberDTO(); 
	String delId = m.getId();
	boolean resutlDel = dao.memberDel(delId);
	if(resutlDel==true){%>
		<script>
		alert("삭제 완료");
		location.href='delete_Success.jsp';
		</script>
	<%}else{%>
		<script>
		alert("삭제 실패");
		location.href='memberDetailInfo.jsp';
		</script>
	<%} %>


</body>
</html>