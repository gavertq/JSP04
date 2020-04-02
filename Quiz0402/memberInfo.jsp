
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.table_memberInfo{margin: 0 auto;}
</style>

</head>
<body>
<%@page import="members.MemberDTO"%>
<jsp:useBean id="Mdao" class="members.MemberDAO"/>

	<%@include file="header.jsp" %>
	<%
	try{
	if(session.getAttribute("loginSuccess").equals("Yes")){	//로그인 상태
		ArrayList<MemberDTO> listMember = Mdao.memberView();
		if(listMember.size() != 0){%>	<!-- 내용있음 -->
		
		<div style="text-align: center; align-items: center;">
		<h3>회원 목록</h3>
		<table class="table_memberInfo" border="1"><tr><th>이름</th><th>주소</th><th>전화번호</th></tr>
		
		<%for(MemberDTO mMInfo : listMember){%>
			<tr>
			<td><a href="memberDetailInfo.jsp?id=<%=mMInfo.getId()%>"><%=mMInfo.getName() %></a></td>
			<td><%=mMInfo.getAddr() %></td>
			<td><%=mMInfo.getTel() %></td>
			</tr>
		<%}%>
		</table>
		<%}else{out.print("데이터 없음");}	//내용 없음
	}else{%>	<!-- 비로그인 상태 -->
		<script type="text/javascript">location.href="login.jsp"</script>
	<%}}catch(Exception e) {%>	<!-- 오류 발생 -->
		<script type="text/javascript">location.href="login.jsp"</script>
	<%} %>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>