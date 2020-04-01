<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
div{text-align: center;}
header{color: gold; margin: 0 auto; font-family: Gabriola; font-size: 60px; font-weight: bold;}
ul{list-style: none;}
ul li{display:inline; margin-right:50px; margin-bottom: 10px;}
</style>

</head>
<body>

<div>
	<header>CARE &nbsp; LAB</header>
	<hr>
		<nav>
			<ul>
				<li><a href="main.jsp">Home</a>
				</li><li><a>회원 정보</a></li>
				<%try{
					if(session.getAttribute("loginSuccess").equals("Yes")){%>
					<li><a href="logout.jsp">로그아웃</a></li>
				<%}else{%>					
					<li><a href="login.jsp">로그인</a></li>
				<%}}catch(Exception e){%>
					<li><a href="login.jsp">로그인</a></li>
				<%}%>
				
			</ul>
		</nav>
	<hr>
</div>

</body>
</html>