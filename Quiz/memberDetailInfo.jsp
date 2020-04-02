<%@page import="com.sun.xml.internal.txw2.Document"%>
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

	<%@include file="header.jsp" %>
	<div class="div_memberDetail">
	<%
	String uId = request.getParameter("id");
	ArrayList<MemberDTO> list = dao.memberDetailView(uId);
	if(list.size() != 0){%>
		<h2>개인 정보</h2>
		<table>
			<%for(MemberDTO m : list){%>
				<tr><th>아이디</th><td><%=m.getId() %></td></tr>
				<tr><th>비밀번호</th><td><%=m.getPwd() %></td></tr>
				<tr><th>이 름</th><td><%=m.getName() %></td></tr>
				<tr><th>주 소</th><td><%=m.getAddr() %></td></tr>
				<tr><th>전화번호</th><td><%=m.getTel() %></td></tr>
			<%}%>
		</table>
		<input type="button" value="수정" onclick="location.href='modify.jsp?id=<%=uId%>'">
		<input type="button" value="삭제"  onclick="location.href='delete.jsp'">
	<%}else{out.print("데이터 없음");}
	%>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>