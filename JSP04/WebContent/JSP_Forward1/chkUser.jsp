<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chkUser.jsp<br>
	<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String user = request.getParameter("user");
	String str = "test.jsp";
	
	if(user.equals("user")){%>
		<jsp:forward page="userPage.jsp">	<!-- 위의 request값을 다음 페이지까지 유지해주는 forward. userPage.jsp에서도 request값 사용 가능-->
		<jsp:param value="param_user" name="name"/>
		</jsp:forward>
	<%}else{%>	
		<jsp:forward page="admin.jsp">
		<jsp:param value="param_admin" name="name"/>
		</jsp:forward>		
	<%} %>
	

</body>
</html>