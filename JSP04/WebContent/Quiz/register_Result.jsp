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
int flag = 0;
String idIN = request.getParameter("idIn");
String pwdIN = request.getParameter("pwdIn");
String nameIN = request.getParameter("nameIn");
if(idIN.isEmpty()){
	flag=1;%>
	<script>
	alert("아이디 입력은 필수입니다!");
	location.href='register.jsp';
	</script>
<%}else if(pwdIN.isEmpty()){
	flag=1;%>
	<script>
	alert("비밀번호 입력은 필수입니다!");
	location.href='register.jsp';
	</script>
<%}else if(nameIN.isEmpty()){
	flag=1;%>
	<script>
	alert("이름 입력은 필수입니다!");
	location.href='register.jsp';
	</script>
<%}
	if(flag==0){
		MemberDTO mIn = new MemberDTO();
		mIn.setId(idIN);
		mIn.setPwd(pwdIN);
		mIn.setName(nameIN);
		mIn.setAddr(request.getParameter("addrIn"));
		mIn.setTel(request.getParameter("telIn"));
		
		boolean alOut = dao.memberIn();
		
		if(alOut==true){%>
			<script type="text/javascript">
			alert("회원가입을 축하합니다");
			location.href='login.jsp';
			</script>
		<%}else{%>
			<script type="text/javascript">
			alert("회원가입 오류 발생!");
			location.href='register.jsp';
			</script>
		<%}
		} %>

</body>
</html>