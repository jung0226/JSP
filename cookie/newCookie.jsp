<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키값 구하기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<%
	//클라이언트 컴퓨터에 저장되어 있는 쿠키 가져오기
	Cookie[] cookie = request.getCookies();
	for(Cookie c :cookie){
		%>
		<li><%=c.getName() %> : <%=c.getValue() %></li>
		<%
	}
%>
</body>
</html>