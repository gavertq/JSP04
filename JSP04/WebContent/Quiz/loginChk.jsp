<%@page import="java.util.ArrayList"%>
<%@page import="members.MemberDTO"%>
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
String uid = request.getParameter("idLogin");
String uPwd = request.getParameter("pwdLogin");

boolean result = dao.memberLogin(uid);

if(result==true){
	MemberDTO m = new MemberDTO();
	if(uPwd.equals(m.getPwd())){
		out.print("<script>location.href=\'successLogin.jsp\'</script>");
		session.setAttribute("loginSuccess", "Yes");
	}else{out.print("<script>alert(\"비밀번호가 일치하지 않습니다.\"); location.href=\'login.jsp\'</script>");}	
	
}else{
	out.print("<script>alert(\"등록되지 않은 아이디 입니다.\"); location.href=\'login.jsp\'</script>");
}
%>

</body>
</html>