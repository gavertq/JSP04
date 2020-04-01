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
</style>

</head>
<body>

<jsp:useBean id="dao" class="members.MemberDAO"/>
	<%@include file="header.jsp" %>
	<div>
	<%
	String name = request.getParameter("name");
	ArrayList<MemberDTO> list = dao.memberDetailView(name);
	if(list.size() != 0){
		for(MemberDTO m : list){
			out.print("id: "+m.getId()+"<br>");
			out.print("pwd: "+m.getPwd()+"<br>");
			out.print("name: "+m.getName()+"<br>");
			out.print("addr: "+m.getAddr()+"<br>");
			out.print("tel: "+m.getTel()+"<br>");
		}
	}else{out.print("데이터 없음");}
	%>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>