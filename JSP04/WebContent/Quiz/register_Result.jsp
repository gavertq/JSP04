<%@page import="oracle.net.aso.d"%>
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
<jsp:useBean id="dto" class="members.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
int flag = 0;
if(dto.getId()==null){
	flag=1;%>
	<script>
	alert("아이디 입력은 필수입니다!");
	location.href='register.jsp';
	</script>
	<%}else if(dto.getPwd()==null) { flag=1;%>
	<script>
	alert("비밀번호 입력은 필수입니다!");
	location.href='register.jsp';
	</script>
<%}else if(dto.getName()==null){
	flag=1;%>
	<script>
	alert("이름 입력은 필수입니다!");
	location.href='register.jsp';
	</script>
<%}
	if(flag==0){		
		boolean alOut = dao.memberIn(dto);
		
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