<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- jstl라이브러리를 사용하기 위해서는 taglib 지시부에 표기하여야 한다. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- c는 uri주소 안에 있는 것들을 총칭하고 그 내용들을 쓸 수 있음. context의 약자로 c를 많이 사용함.(국룰)-->
<%@page import="java.util.Date"%>

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
	<h1>set태그 : 변수를 선언 한다.</h1>
	<%
		int a=1000;
	%>
	<c:set var="num" value="${1234}"></c:set>
	<c:set var="age" value="${25}"></c:set>
	<c:set var="name">세종대왕 </c:set><!-- value를 태그 사이에 써도 됨. -->
	<c:set var="today" value="<%=new Date() %>"></c:set>
	<hr/>
	<h1>변수 사용하기</h1>
	num : ${num};<br/>
	age : ${age};<br/>
	name : ${name};<br/>
	today : ${today};<br/>
	
	<h1>변수 삭제</h1>
	<c:remove var="num" scope="page"/>
	num:${num};
</body>
</html>