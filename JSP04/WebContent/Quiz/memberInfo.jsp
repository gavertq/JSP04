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

	<%
	if(session.getAttribute("loginSuccess").equals("Yes")){
		ArrayList<MemberDTO> list = dao.memberView();
		if(list.size() != 0){%>
		<table><tr><th>이름</th><th>주소</th><th>전화번호</th></tr>
		<%for(MemberDTO m : list){%>
			<tr>
			<td><a href="memberDetailInfo.jsp?name=<%=m.getName() %>"><%=m.getName() %></a></td>
			<td><%=m.getAddr() %></td>
			<td><%=m.getTel() %></td>
			</tr>
			<%}%>
		</table>
		<%}else{out.print("데이터 없음");}
	}else{%>
		<script type="text/javascript">location.href="login.jsp"</script>
	<%} %>

</body>
</html>