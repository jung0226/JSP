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
	<h1>forTokens: 문자열을 이용한 반복문 처리하기</h1>
	<c:forTokens var="i" items="빨강색,,,,,노랑색,파랑색,보라색,^^^^^^하늘색,핑크색,남색" delims=",.^">
		[${i} }]<br/>
	</c:forTokens>
	
</body>
</html>