<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>main.jsp<br>

<!-- 지시자로 페이지 가져오기 -->
<%--@include file="jspInclude.jsp" --%> <!-- 오류가 나지 않는다는건 지시자가 main과 jspInclude를 동시에 번역한다는 것 -->
<%--out.print("<br>jspInclude.jsp에서 만든 변수 name: "+name); --%>

<!-- jsp로 페이지 가져오기 -->
<jsp:include page="jspInclude.jsp"></jsp:include> <!-- 오류발생. 변수를 가져오지 못함. -->
<%--out.print("<br>jspInclude.jsp에서 만든 변수 name: "+name);--%>

</body>
</html>