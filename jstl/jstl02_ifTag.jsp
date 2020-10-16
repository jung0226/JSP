<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device, initial-scale=1"/>
<link rel="stylesheet" href="/webJSP/etc/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="webJSP/etc/bootstrap.js"></script>

</head>
<body>
	<h1>if Tag사용하기</h1>
	<c:set var="data1" value="${1234}"/>
	<c:set var="num" value="${1000}"/>
	<!-- 		조건식 -->
	<c:if test="${true }">
		<b style="color:green">무조건 실행됨</b>
	</c:if>
	
	<c:if test="${data1>num }">
		<h2>dat1이 num보다 큰 값이다.</h2>
	</c:if>
	
	<hr/>
	<!-- 이전 페이지에서 보낸 데이터를 가져올 때 :request.getParameter("변수명") = ${param.username} -->
	이름 :${param.username }<br/>
	나이 :${param.age+10 }<br/>
	아아디:${param.userid}<br/>
</body>
</html>